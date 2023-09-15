import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/ttv_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/app_resources_cubit/app_resources_cubit.dart';

class PixooEmoteCard extends StatelessWidget {
  final TtvEmote emote;
  const PixooEmoteCard({super.key, required this.emote});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: emote.name,
      child: BlocBuilder<AppResourcesCubit, AppResourcesState>(
        builder: (context, resources) {
          return resources.mapOrNull(
                  loaded: (resources) => Image.file(
                        File("${resources.docsPath}\\${emote.fileName(PixooSize.x64)}.gif"),
                        fit: BoxFit.cover,
                      )) ??
              const Placeholder();
        },
      ),
    );
  }
}
