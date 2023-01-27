import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/emote.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emotes_manager.dart';

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
        Observer(
          builder: (_) {
            final bool isProcessing =
                _emotesManager.emotesPrepared.contains(emote);
            final bool isFailed = _emotesManager.emotesFailed.contains(emote);

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
          },
        )
      ],
    );
  }
}
