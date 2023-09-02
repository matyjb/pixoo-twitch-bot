import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/ttv_emote.dart';
import 'package:pixoo_twitch_emotes_displayer/data/providers/imagick_scripts.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/app_resources_cubit/app_resources_cubit.dart';
import 'package:process_run/process_run.dart';

part 'emote_cache_state.dart';
part 'emote_cache_cubit.freezed.dart';

class EmoteCacheCubit extends Cubit<EmoteCacheState> {
  late StreamSubscription<FileSystemEvent> _sub;

  EmoteCacheCubit(String emotesPath)
      : super(const EmoteCacheState(
          idProviderPathMap: {},
          failedEmotesIds: {},
          preperingEmotesIds: {},
        )) {
    final correctFileName = RegExp(r'\\(.+)\..+$');
    _sub = Directory(emotesPath).watch().listen((event) {
      List<String> paths = Directory(emotesPath).listSync().map((e) => e.path).toList();

      setEmotesList(
          Map.fromEntries(paths.map((e) => MapEntry(correctFileName.firstMatch(e)!.group(1)!, e))));
    });
  }

  setEmotesList(Map<String, String> l) {
    emit(state.copyWith(idProviderPathMap: l));
  }

  addToPrep(TtvEmote emote, Future job) {
    if (!state.preperingEmotesIds.containsKey(emote)) {
      emit(state.copyWith(
        preperingEmotesIds: Map.from(state.preperingEmotesIds)..putIfAbsent(emote.id, () => job),
        failedEmotesIds: Set.from(state.failedEmotesIds)..remove(emote.id),
      ));
    } else {
      emit(state.copyWith(
        failedEmotesIds: Set.from(state.failedEmotesIds)..remove(emote.id),
      ));
    }
  }

  addToFailed(TtvEmote emote) {
    emit(state.copyWith(
      preperingEmotesIds: Map.from(state.preperingEmotesIds)..remove(emote.id),
      failedEmotesIds: Set.from(state.failedEmotesIds)..add(emote.id),
    ));
  }

  complete(TtvEmote emote) {
    emit(state.copyWith(
      preperingEmotesIds: Map.from(state.preperingEmotesIds)..remove(emote.id),
      failedEmotesIds: Set.from(state.failedEmotesIds)..remove(emote.id),
    ));
  }

  Future createEmoteFile(TtvEmote emote) {
    final appState = AppResourcesCubit.i.loadedState;
    if (!state.preperingEmotesIds.containsKey(emote.id)) {
      final String emoteFileName = emote.fileName(PixooSize.x64);
      final String emoteFilePath = "${appState.docsPath}\\$emoteFileName.gif";
      // 1. download emote
      // 2. run imagick on it

      //extension is added after download
      Future job = emote
          .download("${appState.cachePath}\\$emoteFileName")
          .then((String newEmoteFilePath) async {
        final String tmpFile = "${appState.cachePath}\\$emoteFileName.tmp.gif";
        final List<String> scriptCmds = await ImagickScripts.getEmotePrepCommands(
          newEmoteFilePath,
          tmpFile,
          emoteFilePath,
        );
        return run(scriptCmds.join("\n")).then((List<ProcessResult> procResults) {
          final Iterable<ProcessResult> errors = procResults.where((element) {
            final dynamic err = element.stderr;
            return err is String && err.isNotEmpty || err is List && err.isNotEmpty;
          });

          if (errors.isNotEmpty) {
            throw errors.join('\n');
          }
        }).catchError((err) {
          addToFailed(emote);
          return err;
        }).then((err) {
          // clean up temp files
          complete(emote);
          final File original = File(newEmoteFilePath);
          final File tmpCoalesce = File(tmpFile);
          if (original.existsSync()) original.deleteSync();
          if (tmpCoalesce.existsSync()) tmpCoalesce.deleteSync();
          if (err != null) {
            throw err;
          }
        });
      });
      addToPrep(emote, job);
      return job;
    } else {
      return state.preperingEmotesIds[emote.id]!;
    }
  }

  @override
  Future<void> close() {
    _sub.cancel();
    // TODO: cancel all emotes production
    return super.close();
  }
}
