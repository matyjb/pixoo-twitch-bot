import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/dashboard/widgets/emote_with_status.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emotes_manager.dart';

class DisplayedEmote extends StatelessWidget {
  DisplayedEmote({super.key});

  final EmotesManager _emotesManager = EmotesManager.instance;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => _emotesManager.displayedEmote != null
          ? EmoteWithStatusWidget(_emotesManager.displayedEmote!)
          : const AspectRatio(
              aspectRatio: 1,
              child: Placeholder(),
            ),
    );
  }
}
