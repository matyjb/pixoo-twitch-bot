import 'package:pixoo_twitch_emotes_displayer/data/models/seventv_user.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/ttv_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/data/providers/seventv_api.dart';

class SevenTVRepo {
  static Future<SevenTVUser> getUser(String login) {
    return SevenTVApi.getUser(login).then((res) {
      if (res.data == null) throw Exception("No data returned");

      return SevenTVUser.fromRaw(res.data!);
    });
  }

  static Future<TtvEmote> getEmote(String emote) {
    return SevenTVApi.getEmote(emote).then((res) {
      if (res.data == null) throw Exception("No data returned");

      return TtvEmote.from7TvRaw(res.data!);
    });
  }

  static Future<List<TtvEmote>> getChannelEmotes(String channel) {
    return Future.wait([
      SevenTVApi.getChannelEmotes(channel),
      SevenTVApi.getGlobalEmotes(),
    ]).then((ress) {
      List<TtvEmote> emotes = [];
      for (var res in ress) {
        if (res.data != null) {
          emotes.addAll(res.data!.map(TtvEmote.from7TvRaw));
        }
      }
      return emotes;
    });
  }
}
