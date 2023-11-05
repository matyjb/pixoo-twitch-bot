part of 'pixoo_adapter_bloc.dart';

@freezed
class PixooAdapterEvent with _$PixooAdapterEvent {
  const factory PixooAdapterEvent.start() = _Start;
  const factory PixooAdapterEvent.stop() = _Stop;
  const factory PixooAdapterEvent.sendEmote(TtvEmote emote) = _SendEmote; // with dispatch
}