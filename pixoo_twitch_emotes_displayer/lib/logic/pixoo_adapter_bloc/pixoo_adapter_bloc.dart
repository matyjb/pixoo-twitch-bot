import 'package:bloc/bloc.dart';
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
  late HttpHostServer _server;

  PixooAdapterBloc(String hostDirectory, String localIp) : super(const _Initial()) {
    _server = HttpHostServer()..start(hostDirectory, localIp).then((_) => add(const _Start()));

    on<_Start>((event, emit) {
      if (state is _Initial || state is _Stopped) {
        emit(const _Running());
      }
    });

    on<_Stop>((event, emit) {
      if (state is _Running) {
        emit(const _Stopped());
      }
    });

    on<_SendEmote>((event, emit) {
      if (state is _Running && (state as _Running).currentEmote != event.emote) {
        emit(PixooAdapterState.running(currentEmote: event.emote));
        final emoteFileName = "${event.emote.fileName(PixooSize.x64)}.gif";
        PixooAPI.playGifFile(
          SettingsCubit.i.state.selectedPixooDevice!.privateIP,
          "${_server.url}/$emoteFileName",
        );
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
