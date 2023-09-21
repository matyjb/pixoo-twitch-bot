import 'package:pixoo_twitch_emotes_displayer/data/models/temotesApi/temotes_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/temotesApi/temotes_user.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/ttv_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/data/providers/t_emotes_api.dart';

class TEmotesRepo {
  static Future<TEmotesUser> getUser(String channelName) {
    return TEmotesApi.getUser(channelName).then((res) {
      if (res.data == null) throw Exception("No data returned");
      return TEmotesUser.fromJson(res.data!);
    });
  }

  static Future<List<TtvEmote>> getChannelEmotes(String channelName) async {
    return Future.wait([
      TEmotesApi.getChannelEmotes(channelName),
      TEmotesApi.getGlobalEmotes(),
    ]).then((ress) {
      List<TtvEmote> emotes = [];
      for (var res in ress) {
        if (res.data != null) {
          emotes.addAll(res.data!.map((e) => TtvEmote.fromTEmotes(TEmotesEmote.fromJson(e))));
        }
      }
      return emotes;
    });
  }
}
