part of 'pixoo_adapter_bloc.dart';

@freezed
class PixooAdapterState with _$PixooAdapterState {
  const factory PixooAdapterState.initial() = _Initial;
  const factory PixooAdapterState.running({
    TtvEmote? currentEmote,
  }) = _Running;
  const factory PixooAdapterState.stopped() = _Stopped;
  const factory PixooAdapterState.changingStatus() = _ChangingStatus;
  
}
