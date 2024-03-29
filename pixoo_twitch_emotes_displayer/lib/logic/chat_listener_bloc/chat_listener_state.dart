part of 'chat_listener_bloc.dart';

@freezed
class ChatListenerState with _$ChatListenerState {
  const factory ChatListenerState.initial() = _Initial;
  const factory ChatListenerState.running({
    required List<TtvEmote> emotesBuffer,
    required List<TtvEmote> emotesRanking,
    required HashMap<String, TtvEmote> emotesOnChannel,
    required Map<TtvEmote, int> emotesPoints,
  }) = _Running;
  const factory ChatListenerState.stopped() = _Stopped;
  const factory ChatListenerState.changingStatus() = _ChangingStatus;
}
