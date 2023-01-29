import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/channel_identifiers.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/dashboard/dashboard_page.dart';
import 'package:pixoo_twitch_emotes_displayer/services/chat_emotes_listener.dart';
import 'package:pixoo_twitch_emotes_displayer/services/emote_host_server.dart';
import 'package:pixoo_twitch_emotes_displayer/services/t_emotes_api.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';
import 'package:pixoo_twitch_emotes_displayer/widgets/chat_emotes_listener_status_indicator.dart';
import 'package:pixoo_twitch_emotes_displayer/widgets/emote_host_server_status_indicator.dart';
import 'package:pixoo_twitch_emotes_displayer/widgets/service_controller_icon_button.dart';
import 'package:route_transitions/route_transitions.dart';

class WaitingForServicesPage extends StatelessWidget {
  const WaitingForServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) {
          final String channel = UserSettings.instance.channelName ?? "";
          return FutureBuilder<ChannelIdentifiers>(
            future: TEmotesAPI.getChannelIdentifiers(channel),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                return _WaitingForServices(
                  channelName: snapshot.data!.display_name,
                  avatarUrl: snapshot.data!.avatar,
                );
              } else {
                return _WaitingForServices(channelName: channel);
              }
            },
          );
        },
      ),
    );
  }
}

class _WaitingForServices extends StatefulWidget {
  final String? avatarUrl;
  final String channelName;
  const _WaitingForServices({
    this.avatarUrl,
    required this.channelName,
  });

  @override
  State<_WaitingForServices> createState() => _WaitingForServicesState();
}

class _WaitingForServicesState extends State<_WaitingForServices>
    with SingleTickerProviderStateMixin {
  Ticker? _ticker;

  @override
  void initState() {
    super.initState();
    _ticker = createTicker((Duration elapsed) {
      if (ChatEmotesListener.instance.status ==
              ChatEmotesListenerStatus.joined &&
          EmoteHostServer.instance.status == EmoteHostServerStatus.running) {
        _ticker?.dispose();
        Future.delayed(
          const Duration(milliseconds: 600),
          () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => DashboardPage(
                defaultAvatarUrl: widget.avatarUrl,
              ),
            ),
          ),
        );
      }
    })
      ..start();
  }

  @override
  void dispose() {
    _ticker?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Hero(
            tag: "channel_avatar",
            child: CircleAvatar(
              backgroundImage: widget.avatarUrl != null
                  ? NetworkImage(widget.avatarUrl!)
                  : null,
              radius: 50,
              child: const SizedBox(
                width: 108,
                height: 108,
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          Text(
            widget.channelName,
            style: Theme.of(context).textTheme.headline2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: ServiceControllerIconButton.heroTag,
                child: ServiceControllerIconButton(
                  onPressed: () => pop(context),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Hero(
                  tag: ChatEmotesListenerStatusIndicator.heroTag,
                  child: ChatEmotesListenerStatusIndicator(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Hero(
                  tag: EmoteHostServerStatusIndicator.heroTag,
                  child: EmoteHostServerStatusIndicator(),
                ),
              ),
            ],
          ),
          Observer(
            builder: (context) {
              final ChatEmotesListener chatEmotesListener =
                  ChatEmotesListener.instance;
              final EmoteHostServer emoteHostServer = EmoteHostServer.instance;
              String infoText = "";

              if (chatEmotesListener.status !=
                  ChatEmotesListenerStatus.joined) {
                infoText = "Oczekiwanie na dołączenie do kanału";
              }
              if (emoteHostServer.status != EmoteHostServerStatus.running) {
                infoText = "Oczekiwanie na serwer emotek";
              }
              return Text(infoText);
            },
          ),
        ],
      ),
    );
  }
}
