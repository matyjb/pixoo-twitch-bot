import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/ttv_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/data/providers/pixoo_api.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/services/http_server.dart';
import 'package:stream_transform/stream_transform.dart';

part 'pixoo_adapter_event.dart';
part 'pixoo_adapter_state.dart';
part 'pixoo_adapter_bloc.freezed.dart';

class PixooAdapterBloc extends Bloc<PixooAdapterEvent, PixooAdapterState> {
  final HttpHostServer _server = HttpHostServer();

  PixooAdapterBloc(String hostDirectory, String localIp) : super(const _Initial()) {
    on<_Start>((event, emit) async {
      if (state is _Initial || state is _Stopped) {
        emit(const _ChangingStatus());
        await _server
            .start(hostDirectory, localIp)
            .then((_) => emit(const _Running()))
            .onError((error, stackTrace) {
          emit(state);
        });
      }
    });

    on<_Stop>((event, emit) async {
      if (state is _Running) {
        emit(const _ChangingStatus());
        await _server.stop().then((_) => emit(const _Stopped())).onError((error, stackTrace) {
          if (kDebugMode) {
            print(error);
          }
          emit(state);
        });
      }
    });

    on<_SendEmote>((event, emit) {
      if (state is _Running && (state as _Running).currentEmote != event.emote) {
        final emoteFileName = "${event.emote.fileName(PixooSize.x64)}.gif";
        PixooAPI.playGifFile(
          SettingsCubit.i.state.selectedPixooDevice!.privateIP,
          "${_server.url}/$emoteFileName",
        ).then((response) {
          if (response.statusCode == null ||
              response.statusCode! >= 400 ||
              response.statusCode! < 200) {
            emit((state as _Running).copyWith(error: response));
          } else {
            emit(PixooAdapterState.running(currentEmote: event.emote));
          }
        });
      }
    }, transformer: debounce(const Duration(milliseconds: 300)));
  }

  @override
  Future<void> close() {
    _server.stop();
    return super.close();
  }
}

EventTransformer<Event> debounce<Event>([
  Duration duration = const Duration(milliseconds: 300),
]) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}
