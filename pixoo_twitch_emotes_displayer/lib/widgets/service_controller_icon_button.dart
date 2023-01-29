import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/services/chat_emotes_listener.dart';
import 'package:pixoo_twitch_emotes_displayer/services/emote_host_server.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_resources.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';

class ServiceControllerIconButton extends StatelessWidget {
  final double? iconSize;
  final Function() onPressed;
  static const String heroTag = "ServiceControllerIconButton";
  ServiceControllerIconButton({
    super.key,
    this.iconSize,
    required this.onPressed,
  });

  final UserSettings _userSettings = UserSettings.instance;
  final AppResources _appResources = AppResources.instance;
  final ChatEmotesListener _chatEmotesListener = ChatEmotesListener.instance;
  final EmoteHostServer _emoteHostServer = EmoteHostServer.instance;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final bool servicesRunning =
            _chatEmotesListener.status == ChatEmotesListenerStatus.joined &&
                _emoteHostServer.status == EmoteHostServerStatus.running;
        final bool servicesStopped =
            _chatEmotesListener.status == ChatEmotesListenerStatus.stopped &&
                _emoteHostServer.status == EmoteHostServerStatus.stopped;

        return IconButton(
          onPressed:
              _userSettings.isReady && _appResources.isReady && servicesStopped
                  ? () {
                      _chatEmotesListener.connect(_userSettings.channelName!);
                      _emoteHostServer.start();
                      onPressed();
                    }
                  : () {
                      _chatEmotesListener.disconnect();
                      _emoteHostServer.stop();
                      onPressed();
                    },
          icon: servicesRunning || !servicesStopped
              ? const Icon(Icons.stop_rounded)
              : const Icon(Icons.play_arrow_rounded),
          iconSize: iconSize,
        );
      },
    );
  }
}
