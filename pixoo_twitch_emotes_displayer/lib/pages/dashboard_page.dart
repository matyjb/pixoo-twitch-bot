import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:animated_list_plus/transitions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/channel_identifiers/channel_identifiers.dart';
import 'package:pixoo_twitch_emotes_displayer/services/t_emotes_api.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_config.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emote_chooser.dart';
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
                IconButton(
                  icon: const Icon(Icons.refresh_rounded),
                  onPressed: () =>
                      EmoteListener().getEmotes(AppConfig().channelName),
                ),
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
  final EmoteChooser _emoteChooser = EmoteChooser();
  final AppConfig _appConfig = AppConfig();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Observer(builder: (context) {
          return SizedBox(
            height: 100,
            child: _emoteChooser.displayedEmote != null
                ? Image.network(_emoteChooser.displayedEmote!.urls.last.url)
                : const Placeholder(),
          );
        }),
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
            "Emote occurances threshold",
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        Observer(
          builder: (context) {
            return Slider(
              label: _appConfig.emoteOccurancesThreshold.toString(),
              value: _appConfig.emoteOccurancesThreshold.toDouble(),
              onChanged: (value) =>
                  _appConfig.setEmoteOccurancesThreshold(value.toInt()),
              divisions: 4,
              min: 1,
              max: 5,
            );
          },
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          alignment: Alignment.bottomLeft,
          child: Text(
            "Emote ttl",
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        Observer(
          builder: (context) {
            return Slider(
              label: _appConfig.maxEmoteHistoryEntryLifetimeSec.toString(),
              value: _appConfig.maxEmoteHistoryEntryLifetimeSec.toDouble(),
              onChanged: (value) =>
                  _appConfig.setMaxEmoteHistoryEntryLifetimeSec(value.toInt()),
              divisions: 59,
              min: 1,
              max: 60,
            );
          },
        )
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
