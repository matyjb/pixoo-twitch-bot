part of 'chat_listener_bloc.dart';

@freezed
class ChatListenerEvent with _$ChatListenerEvent {
  const factory ChatListenerEvent.start() = _Start;
  const factory ChatListenerEvent.stop() = _Stop;
  const factory ChatListenerEvent.reportEmote(TtvEmote emote) = _ReportEmote;
  const factory ChatListenerEvent.refreshChannelEmotes() = _RefreshChannelEmotes;
}