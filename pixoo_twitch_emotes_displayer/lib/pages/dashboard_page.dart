import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:animated_list_plus/transitions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/channel_identifiers.dart';
import 'package:pixoo_twitch_emotes_displayer/services/t_emotes_api.dart';
import 'package:pixoo_twitch_emotes_displayer/store/channel_resources.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emotes_manager.dart';
import 'package:pixoo_twitch_emotes_displayer/widgets/service_controller_icon_button.dart';

import '../models/emote.dart';
import '../helpers/pair.dart';
import '../store/user_settings.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ChannelIdentifiers>(
      future: TEmotesAPI.getChannelIdentifiers(UserSettings.instance.channelName!),
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
                      ChannelResources.instance.getEmotes(UserSettings.instance.channelName!),
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

  final EmotesManager _emotesManager = EmotesManager.instance;
  final UserSettings _userSettings = UserSettings.instance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Observer(builder: (context) {
          return SizedBox(
            height: 100,
            child: _emotesManager.displayedEmote != null
                ? EmoteWithStatusWidget(_emotesManager.displayedEmote!)
                : const SizedBox(width: 100, height: 100, child: Placeholder()),
          );
        }),
        Expanded(
          child: Observer(
            builder: (context) {
              return ImplicitlyAnimatedList<
                  MapEntry<Emote, Pair<DateTime, int>>>(
                items: _emotesManager.ranking,
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
              label: _userSettings.emoteActivationThreshold.toString(),
              value: _userSettings.emoteActivationThreshold.toDouble(),
              onChanged: (value) =>
                  _userSettings.setEmoteActivationThreshold(value.toInt()),
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
              label: _userSettings.emoteTTL.toString(),
              value: _userSettings.emoteTTL.toDouble(),
              onChanged: (value) =>
                  _userSettings.setEmoteTTL(value.toInt()),
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

class EmoteWithStatusWidget extends StatelessWidget {
  final Emote emote;
  EmoteWithStatusWidget(this.emote, {super.key});

  final EmotesManager _emotesManager = EmotesManager.instance;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.network(
            emote.urls.last.url,
            fit: BoxFit.cover,
          ),
        ),
        Observer(builder: (_) {
          bool isProcessing =
              _emotesManager.emotesPrepared.contains(emote);
          bool isFailed = _emotesManager.emotesFailed.contains(emote);

          if (isProcessing || isFailed) {
            return Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                width: 15,
                height: 15,
                child: isProcessing
                    ? const CircularProgressIndicator(
                        strokeWidth: 2,
                      )
                    : Icon(
                        Icons.highlight_off_rounded,
                        color: Colors.red.shade400,
                        size: 19,
                      ),
              ),
            );
          } else {
            return Container();
          }
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
