import 'package:pixoo_twitch_emotes_displayer/data/models/sevenTvApi/seventv_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/sevenTvApi/seventv_user.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/ttv_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/data/providers/seventv_api.dart';

class SevenTVRepo {
  static Future<SevenTVUser> getUser(int userId) async {
    return SevenTVApi.getUser(userId).then((res) {
      if (res.data == null) throw Exception("No data returned");

      return SevenTVUser.fromJson(res.data!);
    });
  }

  // static Future<TtvEmote> getEmote(String emote) {
  //   return SevenTVApi.getEmote(emote).then((res) {
  //     if (res.data == null) throw Exception("No data returned");

  //     return TtvEmote.from7TvRaw(SevenTVEmoteRaw.fromJson(res.data!));
  //   });
  // }

  static Future<List<TtvEmote>> getChannelEmotes(int userId) async {
    return Future.wait([
      SevenTVApi.getChannelEmotes(userId),
      SevenTVApi.getGlobalEmotes(),
    ]).then((ress) {
      List<TtvEmote> emotes = [];
      for (var res in ress) {
        if (res.data != null) {
          emotes.addAll(res.data!.map((e) => TtvEmote.from7Tv(SevenTVEmote.fromJson(e))));
        }
      }
      return emotes;
    });
  }
}
