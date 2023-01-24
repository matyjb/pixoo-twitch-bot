import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/emote.dart';
import 'package:pixoo_twitch_emotes_displayer/models/emote_history_entry.dart';
import 'package:pixoo_twitch_emotes_displayer/services/t_emotes_api.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';

part '../generated/channel_resources.g.dart';

const int maxHistorySize = 200;

class ChannelResources extends _ChannelResourcesBase with _$ChannelResources {
  static ChannelResources instance = ChannelResources._internal();

  ChannelResources._internal();

  Future getEmotes(String channelName) async {
    final Map<String, Emote> result = {};

    final List<Emote> globalEmotes = await TEmotesAPI.getEmotesGlobal();
    for (final element in globalEmotes) {
      result[element.code] = element;
    }

    final List<Emote> channelEmotes =
        await TEmotesAPI.getEmotesForChannel(channelName);
    for (final element in channelEmotes) {
      result[element.code] = element;
    }

    setEmotes(result);
    setEmoteHistory([]);
  }
}

abstract class _ChannelResourcesBase with Store {
  @observable
  ObservableMap<String, Emote> emotes = ObservableMap.of({});
  @action
  void setEmotes(Map<String, Emote> value) => emotes = value.asObservable();

  @observable
  ObservableList<EmoteHistoryEntry> emoteHistory = ObservableList.of([]);
  @action
  void setEmoteHistory(List<EmoteHistoryEntry> value) => emoteHistory
    ..clear()
    ..addAll(value);

  @action
  void reportEmote(Emote emote) {
    emoteHistory.insert(
      0,
      EmoteHistoryEntry(emote: emote, time: DateTime.now()),
    );
    if (emoteHistory.length > maxHistorySize) {
      emoteHistory.removeRange(maxHistorySize, emoteHistory.length);
    }
    final now = DateTime.now();
    emoteHistory.retainWhere(
      (element) =>
          now.difference(element.time).inSeconds <
          UserSettings.instance.emoteTTL,
    );
  }
}
