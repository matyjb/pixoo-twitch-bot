import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/channel_identifiers.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/dashboard/widgets/displayed_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/dashboard/widgets/emote_activation_slider.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/dashboard/widgets/emote_ranking_list.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/dashboard/widgets/emote_ttl_slider.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/dashboard/widgets/refresh_emotes_icon_button.dart';
import 'package:pixoo_twitch_emotes_displayer/services/t_emotes_api.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';
import 'package:pixoo_twitch_emotes_displayer/widgets/chat_emotes_listener_status_indicator.dart';
import 'package:pixoo_twitch_emotes_displayer/widgets/emote_host_server_status_indicator.dart';
import 'package:pixoo_twitch_emotes_displayer/widgets/service_controller_icon_button.dart';
import 'package:route_transitions/route_transitions.dart';

class DashboardPage extends StatelessWidget {
  final String? defaultAvatarUrl;
  const DashboardPage({super.key, this.defaultAvatarUrl});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final String channel = UserSettings.instance.channelName ?? "";

        return FutureBuilder<ChannelIdentifiers>(
          future: TEmotesAPI.getChannelIdentifiers(channel),
          builder: (context, snapshot) {
            final String? avatar = snapshot.data?.avatar ?? defaultAvatarUrl;
            return Scaffold(
              appBar: AppBar(
                title: Text(snapshot.data?.display_name ?? channel),
                automaticallyImplyLeading: false,
                actions: [
                  RefreshEmotesIconButton(),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Hero(
                      tag: "channel_avatar",
                      child: CircleAvatar(
                        backgroundImage:
                            avatar != null ? NetworkImage(avatar) : null,
                      ),
                    ),
                  )
                ],
              ),
              body: Column(
                children: [
                  SizedBox(
                    height: 100,
                    child: DisplayedEmote(),
                  ),
                  Expanded(
                    child: EmoteRankingList(),
                  ),
                  EmoteActivationSlider(),
                  EmoteTTLSlider(),
                  const _ServiceControls(),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class _ServiceControls extends StatelessWidget {
  const _ServiceControls();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Hero(
          tag: ServiceControllerIconButton.heroTag,
          child: ServiceControllerIconButton(onPressed: () => pop(context)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Hero(
            tag: ChatEmotesListenerStatusIndicator.heroTag,
            child: ChatEmotesListenerStatusIndicator(),
          ),
        ),
        const Expanded(child: Text("TTV bot")),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Hero(
            tag: EmoteHostServerStatusIndicator.heroTag,
            child: EmoteHostServerStatusIndicator(),
          ),
        ),
        const Expanded(child: Text("Server emotek")),
      ],
    );
  }
}
