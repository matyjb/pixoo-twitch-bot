import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:animated_list_plus/transitions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/helpers/pair.dart';
import 'package:pixoo_twitch_emotes_displayer/models/emote.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emotes_manager.dart';

class EmoteRankingList extends StatelessWidget {
  EmoteRankingList({super.key});

  final EmotesManager _emotesManager = EmotesManager.instance;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return ImplicitlyAnimatedList<MapEntry<Emote, Pair<DateTime, int>>>(
          items: _emotesManager.ranking,
          areItemsTheSame: (oldItem, newItem) => oldItem.key == newItem.key,
          itemBuilder: (context, animation, item, index) => SizeFadeTransition(
            sizeFraction: 0.7,
            curve: Curves.easeInOut,
            animation: animation,
            child: _EmoteListTile(
              emote: item.key,
              value: item.value.v2,
            ),
          ),
          removeItemBuilder: (context, animation, oldItem) {
            return FadeTransition(
              opacity: animation,
              child: _EmoteListTile(
                emote: oldItem.key,
                value: oldItem.value.v2,
              ),
            );
          },
        );
      },
    );
  }
}

class _EmoteListTile extends StatelessWidget {
  final Emote emote;
  final int value;

  const _EmoteListTile({
    required this.emote,
    required this.value,
  });

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
