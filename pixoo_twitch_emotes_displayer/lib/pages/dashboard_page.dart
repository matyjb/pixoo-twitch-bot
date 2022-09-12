import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:animated_list_plus/transitions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/channel_identifiers/channel_identifiers.dart';
import 'package:pixoo_twitch_emotes_displayer/services/tEmotes_api.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_config.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emote_listener.dart';
import 'package:pixoo_twitch_emotes_displayer/widgets/service_controller_icon_button.dart';

import '../models/emote/emote.dart';
import '../models/helpers/pair.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ChannelIdentifiers>(
      future: TEmotesAPI.getChannelIdentifiers(AppConfig().channelName),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              leading: ServiceControllerIconButton(),
              title: Text(snapshot.data!.display_name),
              actions: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(snapshot.data!.avatar),
                  ),
                )
              ],
            ),
            body: DashboardBody(),
          );
        }
        return Scaffold(
          appBar: AppBar(
            leading: ServiceControllerIconButton(),
            title: const Text("Dashboard"),
          ),
          body: DashboardBody(),
        );
      },
    );
  }
}

class DashboardBody extends StatelessWidget {
  DashboardBody({
    Key? key,
  }) : super(key: key);

  final EmoteListener _emoteListener = EmoteListener();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Observer(
            builder: (context) {
              return ImplicitlyAnimatedList<
                  MapEntry<Emote, Pair<DateTime, int>>>(
                items: _emoteListener.ranking,
                areItemsTheSame: (oldItem, newItem) =>
                    oldItem.key == newItem.key,
                itemBuilder: (context, animation, item, index) =>
                    SizeFadeTransition(
                  sizeFraction: 0.7,
                  curve: Curves.easeInOut,
                  animation: animation,
                  child: EmoteListTile(
                    emote: item.key,
                    value: item.value.v2,
                  ),
                ),
                removeItemBuilder: (context, animation, oldItem) {
                  return FadeTransition(
                    opacity: animation,
                    child: EmoteListTile(
                      emote: oldItem.key,
                      value: oldItem.value.v2,
                    ),
                  );
                },
              );
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          alignment: Alignment.bottomLeft,
          child: Text(
            "długość historii",
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        Observer(builder: (context) {
          return Slider(
            label: _emoteListener.maxEmoteHistoryEntryLifetimeSec.toString(),
            value: _emoteListener.maxEmoteHistoryEntryLifetimeSec.toDouble(),
            onChanged: (value) => _emoteListener
                .setMaxEmoteHistoryEntryLifetimeSec(value.toInt()),
            divisions: 59,
            min: 1,
            max: 60,
          );
        })
      ],
    );
  }
}

class EmoteListTile extends StatelessWidget {
  final Emote emote;
  final int value;

  const EmoteListTile({
    Key? key,
    required this.emote,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(emote.urls[0].url),
              Text(value.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
