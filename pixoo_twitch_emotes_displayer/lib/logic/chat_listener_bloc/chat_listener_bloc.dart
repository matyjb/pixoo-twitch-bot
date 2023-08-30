import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/ttv_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/twitch_chat_msg.dart';
import 'package:pixoo_twitch_emotes_displayer/data/repositories/seventv_repo.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/emote_cache_cubit/emote_cache_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/pixoo_adapter_bloc/pixoo_adapter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/services/chat_listener.dart';

part 'chat_listener_event.dart';
part 'chat_listener_state.dart';
part 'chat_listener_bloc.freezed.dart';

class ChatListenerBloc extends Bloc<ChatListenerEvent, ChatListenerState> {
  late ChatListener _chatListener;

  ChatListenerBloc(
    // this for checking if emotes exists
    EmoteCacheCubit emoteCacheCubit,
    // this for sending emote to pixoo
    PixooAdapterBloc pixooAdapterBloc,
  ) : super(const _Initial()) {
    final settings = SettingsCubit.i.state;
    _chatListener = ChatListener()..connect(settings.channelName!, settings.apiKey!);

    _chatListener.socket.stream.listen(
      (message) {
        final msg = message as String;
        if (msg.contains(" JOIN ")) {
          add(const _Start());
        }
        if (state is _Running) {
          final s = state as _Running;

          final TwitchMessage parsedMsg = TwitchMessage.fromLine(msg);
          if (kDebugMode && parsedMsg.type == MsgType.msg) {
            // ignore: avoid_print
            // print(parsedMsg);
          }

          if (parsedMsg.type == MsgType.msg) {
            for (final e in s.emotesOnChannel) {
              if (parsedMsg.content.startsWith("$e ") ||
                  parsedMsg.content.contains(" $e ") ||
                  parsedMsg.content.endsWith(" $e") ||
                  parsedMsg.content == e.name) {
                add(_ReportEmote(e));
              }
            }
          }
        }
      },
    );

    on<_Start>((event, emit) async {
      if (state is _Initial || state is _Stopped) {
        final settings = SettingsCubit.i.state;
        emit(_Running(
          emotesBuffer: [],
          emotesRanking: [],
          emotesOnChannel: await SevenTVRepo.getChannelEmotes(settings.channelName!),
        ));
      }
    });

    on<_Stop>((event, emit) {
      if (state is _Running) {
        emit(const _Stopped());
      }
    });

    on<_ReportEmote>((event, emit) {
      if (state is _Running) {
        final s = state as _Running;
        final newEmotesBuffer = List<TtvEmote>.from(s.emotesBuffer)..add(event.emote);
        // # assuming settings wont change while listening
        if (newEmotesBuffer.length > SettingsCubit.i.state.bufferSize) {
          newEmotesBuffer.removeAt(0);
        }

        // forza horizon team race point system
        Map<TtvEmote, int> points = {};
        Map<TtvEmote, int> counters = {};
        for (var emote in newEmotesBuffer.reversed) {
          final pointsForEmote = counters.entries
              .where((element) => element.key != emote)
              .fold(0, (previousValue, element) => previousValue + element.value);
          points.update(emote, (value) => value + pointsForEmote, ifAbsent: () => pointsForEmote);
          counters.update(emote, (value) => value + 1, ifAbsent: () => 1);
        }
        final tmpList = points.entries.toList()..sort((a, b) => a.value.compareTo(b.value));
        final List<TtvEmote> ranking = tmpList.map((e) => e.key).toList();

        emit(s.copyWith(
          emotesBuffer: newEmotesBuffer,
          emotesRanking: ranking,
        ));

        if (!emoteCacheCubit.state.idProviderPathMap
            .containsKey(event.emote.fileName(PixooSize.x64))) {
          emoteCacheCubit.createEmoteFile(event.emote).then((_) {
            if (state is _Running) {
              PixooAdapterEvent.sendEmote(event.emote);
            }
          });
        } else {
          pixooAdapterBloc.add(PixooAdapterEvent.sendEmote(event.emote));
        }
      }
    });

    on<_RefreshChannelEmotes>((event, emit) async {
      if (state is _Running) {
        final settings = SettingsCubit.i.state;
        emit((state as _Running).copyWith(
          emotesOnChannel: await SevenTVRepo.getChannelEmotes(settings.channelName!),
        ));
      }
    });
  }

  @override
  Future<void> close() {
    _chatListener.disconnect();
    return super.close();
  }
}