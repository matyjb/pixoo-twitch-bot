import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_resources.dart';
import 'package:route_transitions/route_transitions.dart';

import '../pages/dashboard_page.dart';
import '../services/chat_emotes_listener.dart';
import '../services/emote_host_server.dart';
import '../store/user_settings.dart';

class ServiceControllerIconButton extends StatelessWidget {
  final double? iconSize;
  ServiceControllerIconButton({Key? key, this.iconSize}) : super(key: key);

  final UserSettings _userSettings = UserSettings.instance;
  final AppResources _appResources = AppResources.instance;
  final ChatEmotesListener _chatEmotesListener = ChatEmotesListener.instance;
  final EmoteHostServer _emoteHostServer = EmoteHostServer.instance;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => IconButton(
        onPressed: _userSettings.isReady && _appResources.isReady
            ? () {
                if (_chatEmotesListener.status == ChatEmotesListenerStatus.joined) {
                  _chatEmotesListener.disconnect();
                  _emoteHostServer.stop();
                  pop(context);
                } else {
                  _chatEmotesListener.connect(_userSettings.channelName!);
                  _emoteHostServer.start();
                  pushWidget(
                    newPage: const DashboardPage(),
                    context: context,
                  );
                }
              }
            : null,
        icon: Observer(builder: (context) {
          return _chatEmotesListener.status == ChatEmotesListenerStatus.joined
              ? const Icon(Icons.pause_rounded)
              : const Icon(Icons.play_arrow_rounded);
        }),
        iconSize: iconSize,
      ),
    );
  }
}
