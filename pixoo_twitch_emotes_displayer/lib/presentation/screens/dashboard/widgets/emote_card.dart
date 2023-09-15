import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/ttv_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/emote_cache_cubit/emote_cache_cubit.dart';

class EmoteCard extends StatelessWidget {
  final TtvEmote emote;
  final String? caption;
  const EmoteCard({
    super.key,
    required this.emote,
    this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmoteCacheCubit, EmoteCacheState>(
      builder: (context, state) {
        return _EmoteCard(
          emote: emote,
          isProcessing: state.preperingEmotesIds.containsKey(emote.id),
          isFailed: state.failedEmotesIds.contains(emote.id),
          caption: caption,
        );
      },
    );
  }
}

class _EmoteCard extends StatelessWidget {
  final TtvEmote emote;
  final bool isProcessing;
  final bool isFailed;
  final String? caption;
  const _EmoteCard({
    required this.emote,
    this.isProcessing = false,
    this.isFailed = false,
    this.caption,
  });

  @override
  Widget build(BuildContext context) {
    final bool withStatus = isProcessing || isFailed;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        AnimatedPadding(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.all(withStatus ? 5.0 : 0),
          child: Tooltip(
            message: emote.name,
            child: Image.network(
              emote.maxQualityUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (withStatus)
          Positioned(
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
          ),
        if (caption != null)
          Positioned(
            bottom: 0,
            left: 0,
            child: Text(
              caption!,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
      ],
    );
  }
}
