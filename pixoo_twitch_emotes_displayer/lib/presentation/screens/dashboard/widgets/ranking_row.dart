import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/chat_listener_bloc/chat_listener_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/emote_card.dart';

class RankingRow extends StatelessWidget {
  final int amount;
  const RankingRow({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatListenerBloc, ChatListenerState>(
      builder: (context, state) {
        return state.mapOrNull(
              running: (state) => Row(
                mainAxisSize: MainAxisSize.max,
                children: state.emotesRanking.take(amount).indexed.map(
                  (p) {
                    final emote = EmoteCard(
                      emote: p.$2,
                      caption: state.emotesPoints[p.$2].toString(),
                    );
                    return Expanded(
                      flex: amount - p.$1,
                      child: p.$1 == 0
                          ? Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).colorScheme.primary, width: 2)),
                              child: emote,
                            )
                          : emote,
                    );
                  },
                ).toList(),
              ),
            ) ??
            Container();
      },
    );
  }
}
