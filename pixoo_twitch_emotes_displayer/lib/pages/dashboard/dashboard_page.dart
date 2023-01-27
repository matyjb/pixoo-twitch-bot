import 'package:flutter/material.dart';
import 'package:pixoo_twitch_emotes_displayer/models/channel_identifiers.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/dashboard/widgets/channel_avatar.dart';
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
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ChannelIdentifiers>(
      future:
          TEmotesAPI.getChannelIdentifiers(UserSettings.instance.channelName!),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              title: Text(snapshot.data!.display_name),
              automaticallyImplyLeading: false,
              actions: [
                RefreshEmotesIconButton(),
                ChannelAvatar(snapshot.data!.avatar),
              ],
            ),
            floatingActionButton: const SettingsFAB(),
            body: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: DisplayedEmote(),
                ),
                Expanded(
                  child: EmoteRankingList(),
                ),
              ],
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(
            leading: ServiceControllerIconButton(
              onPressed: () => pop(context),
            ),
            title: const Text("Dashboard"),
          ),
          body: Container(),
        );
      },
    );
  }
}

class SettingsFAB extends StatefulWidget {
  const SettingsFAB({super.key});

  @override
  State<SettingsFAB> createState() => _SettingsFABState();
}

class _SettingsFABState extends State<SettingsFAB> {
  PersistentBottomSheetController? _bsController;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        if (_bsController != null) {
          _bsController!.close();
          setState(() {
            _bsController = null;
          });
        } else {
          setState(() {
            _bsController = showBottomSheet(
              context: context,
              builder: (_) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  EmoteActivationSlider(),
                  EmoteTTLSlider(),
                  const ServiceControls(),
                ],
              ),
            );
          });
        }
      },
      child: Icon(
        _bsController == null ? Icons.settings : Icons.arrow_downward_rounded,
      ),
    );
  }
}

class ServiceControls extends StatelessWidget {
  const ServiceControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ServiceControllerIconButton(onPressed: () => pop(context)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: ChatEmotesListenerStatusIndicator(),
        ),
        const Expanded(child: Text("TTV bot")),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: EmoteHostServerStatusIndicator(),
        ),
        const Expanded(child: Text("Emote server")),
      ],
    );
  }
}
