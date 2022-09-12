import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/emote/emote.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_config.dart';
import 'package:pixoo_twitch_emotes_displayer/store/cache_server.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emote_listener.dart';

part 'emote_chooser.g.dart';

class EmoteChooser extends _EmoteChooserBase with _$EmoteChooser {
  static final EmoteChooser _singleton = EmoteChooser._internal();

  factory EmoteChooser() {
    return _singleton;
  }

  EmoteChooser._internal();
}

abstract class _EmoteChooserBase with Store {
  final EmoteListener _emoteListener = EmoteListener();
  final AppConfig _appConfig = AppConfig();
  @observable
  Emote? displayedEmote;

  @action
  void refreshDisplayedEmote() {
    if (_emoteListener.ranking.isNotEmpty) {
      var emote =
          _emoteListener.ranking.first.value.v2 >= _appConfig.emoteOccurancesThreshold
              ? _emoteListener.ranking.first.key
              : null;
      if (emote != null && emote != displayedEmote) {
        displayedEmote = emote;
      }
      displayedEmote ??= _emoteListener.ranking.first.key;
    } else {
      displayedEmote = null;
    }
  }

  Future<void> _sendEmoteToDevice() async {
    if (displayedEmote != null) {
      await CacheServer().prepareEmote(displayedEmote!);
      // then send request to devices api
    }
  }
}
