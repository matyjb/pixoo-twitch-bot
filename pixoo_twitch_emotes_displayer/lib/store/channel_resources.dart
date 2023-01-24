import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';

import '../models/emote.dart';
import '../models/emote_history_entry.dart';
import '../services/t_emotes_api.dart';

part '../generated/channel_resources.g.dart';

const int maxHistorySize = 200;

class ChannelResources extends _ChannelResourcesBase with _$ChannelResources {
  static ChannelResources instance = ChannelResources._internal();

  ChannelResources._internal();

  Future getEmotes(String channelName) async {
    Map<String, Emote> result = {};

    List<Emote> globalEmotes = await TEmotesAPI.getEmotesGlobal();
    for (var element in globalEmotes) {
      result[element.code] = element;
    }

    List<Emote> channelEmotes =
        await TEmotesAPI.getEmotesForChannel(channelName);
    for (var element in channelEmotes) {
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
  setEmotes(Map<String, Emote> value) => emotes = value.asObservable();

  @observable
  ObservableList<EmoteHistoryEntry> emoteHistory = ObservableList.of([]);
  @action
  setEmoteHistory(List<EmoteHistoryEntry> value) => emoteHistory
    ..clear()
    ..addAll(value);

  @action
  reportEmote(Emote emote) {
    emoteHistory.insert(
        0, EmoteHistoryEntry(emote: emote, time: DateTime.now()));
    if (emoteHistory.length > maxHistorySize) {
      emoteHistory.removeRange(maxHistorySize, emoteHistory.length);
    }
    var now = DateTime.now();
    emoteHistory.retainWhere((element) =>
        now.difference(element.time).inSeconds <
        UserSettings.instance.emoteTTL);
  }
}
