import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/log_entry.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/ttv_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/ttv_user.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/twitch_chat_msg.dart';
import 'package:pixoo_twitch_emotes_displayer/data/repositories/temotes_repo.dart';
import 'package:pixoo_twitch_emotes_displayer/helpers/math.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/emote_cache_cubit/emote_cache_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/logs_cubit/logs_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/pixoo_adapter_bloc/pixoo_adapter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/services/chat_listener.dart';

part 'chat_listener_event.dart';
part 'chat_listener_state.dart';
part 'chat_listener_bloc.freezed.dart';

_writeToLog(LogEntryType type, String message) => writeToLog(type, "Chat listener service", message);

class ChatListenerBloc extends Bloc<ChatListenerEvent, ChatListenerState> {
  ChatListener? _chatListener;
  StreamSubscription? _chatSub;

  ChatListenerBloc(
    // this for checking if emotes exists
    EmoteCacheCubit emoteCacheCubit,
    // this for sending emote to pixoo
    PixooAdapterBloc pixooAdapterBloc,
    TtvUser user,
  ) : super(const _Initial()) {
    on<_Start>((event, emit) async {
      if (state is _Initial || state is _Stopped) {
        emit(const _ChangingStatus());
        final settings = SettingsCubit.i.state;
        _chatListener?.disconnect();
        _chatListener = ChatListener();
        await _chatListener!.connect(settings.channelName!, settings.apiKey!).then(
          (_) async {
            _chatSub = _chatListener!.msgStream.listen(
              (msg) {
                // if (msg.contains(" JOIN ")) {
                //   add(const _Start());
                // }
                if (state is _Running) {
                  final s = state as _Running;

                  final TwitchMessage parsedMsg = TwitchMessage.fromLine(msg);
                  if (kDebugMode && parsedMsg.type == MsgType.msg) {
                    // ignore: avoid_print
                    print(parsedMsg);
                  }

                  if (parsedMsg.type == MsgType.msg) {
                    Set<TtvEmote> foundEmotes = {};
                    for (var word in parsedMsg.content.split(' ')) {
                      if (s.emotesOnChannel.containsKey(word)) {
                        foundEmotes.add(s.emotesOnChannel[word]!);
                      }
                    }
                    if (foundEmotes.isNotEmpty) {
                      add(_ReportEmotes(foundEmotes));
                    }
                  }
                }
              },
            );
            List<TtvEmote> emotes = await TEmotesRepo.getChannelEmotes(user.login);
            emit(
              _Running(
                emotesBuffer: [],
                emotesRanking: [],
                emotesOnChannel: HashMap.fromEntries(emotes.map((e) => MapEntry(e.name, e))),
                emotesPoints: {},
              ),
            );
          },
        ).onError((error, stackTrace) {
          if (kDebugMode) {
            print(error);
          }
          emit(state);
        });
      }
    });

    on<_Stop>((event, emit) {
      if (state is _Running) {
        _chatSub?.cancel();
        _chatListener?.disconnect();
        emit(const _Stopped());
      }
    });

    on<_ReportEmotes>((event, emit) {
      if (state is _Running) {
        final s = state as _Running;

        // last is the newest emote
        final newEmotesBuffer = List<TtvEmote>.from(s.emotesBuffer)..addAll(event.emotes);

        if (newEmotesBuffer.length > SettingsCubit.i.state.bufferSize) {
          newEmotesBuffer.removeRange(0, newEmotesBuffer.length - SettingsCubit.i.state.bufferSize);
        }

        // forza horizon team race point system
        final points = countPoints(newEmotesBuffer);
        final tmpList = points.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
        final List<TtvEmote> ranking = tmpList.map((e) => e.key).toList();

        emit(s.copyWith(
          emotesBuffer: newEmotesBuffer,
          emotesRanking: ranking,
          emotesPoints: points,
        ));

        final mainEmote = ranking.first;

        if (!emoteCacheCubit.state.idProviderPathMap
            .containsKey(mainEmote.fileName(PixooSize.x64))) {
          emoteCacheCubit.createEmoteFile(mainEmote).then((_) {
            if (state is _Running) {
              pixooAdapterBloc.add(PixooAdapterEvent.sendEmote(mainEmote));
            }
          });
        } else {
          pixooAdapterBloc.add(PixooAdapterEvent.sendEmote(mainEmote));
        }
      }
    });
    on<_RefreshChannelEmotes>((event, emit) async {
      if (state is _Running) {
        _writeToLog(LogEntryType.action, "Refreshing emotes list on channel");
        List<TtvEmote> emotes = await TEmotesRepo.getChannelEmotes(user.id);
        _writeToLog(LogEntryType.info, "Refreshed emotes list (${emotes.length} emotes)");
        emit((state as _Running).copyWith(
          emotesOnChannel: HashMap.fromEntries(emotes.map((e) => MapEntry(e.name, e))),
        ));
      }
    });
  }

  @override
  Future<void> close() {
    _chatSub?.cancel();
    _chatListener?.disconnect();
    return super.close();
  }
}
