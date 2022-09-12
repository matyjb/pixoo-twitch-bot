import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/store/cache_server.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emote_listener.dart';
import 'package:route_transitions/route_transitions.dart';

import '../pages/dashboard_page.dart';
import '../store/app_config.dart';

class ServiceControllerIconButton extends StatelessWidget {
  final double? iconSize;
  ServiceControllerIconButton({Key? key, this.iconSize}) : super(key: key);

  final emoteListener = EmoteListener();
  final appConfig = AppConfig();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => IconButton(
        onPressed: appConfig.isReady
            ? () {
                switch (emoteListener.status) {
                  case EmoteListenerStatus.running:
                    emoteListener.close();
                    pop(context);
                    break;
                  case EmoteListenerStatus.error:
                    emoteListener.connect();
                    CacheServer().start();
                    break;
                  case EmoteListenerStatus.stopped:
                    emoteListener.connect();
                    CacheServer().start();
                    pushWidget(
                      newPage: DashboardPage(),
                      context: context,
                    );
                    break;
                }
              }
            : null,
        icon: Builder(builder: (context) {
          switch (emoteListener.status) {
            case EmoteListenerStatus.running:
              return const Icon(Icons.pause_rounded);
            case EmoteListenerStatus.error:
              return const Icon(Icons.autorenew_rounded);
            default:
              return const Icon(Icons.play_arrow_rounded);
          }
        }),
        iconSize: iconSize,
      ),
    );
  }
}
