import 'package:pixoo_twitch_emotes_displayer/helpers/pair.dart';
import 'package:pixoo_twitch_emotes_displayer/models/pixoo_device.dart';
import 'package:process_run/shell_run.dart';

class ImagickScripts {
  // helpers
  static Future<List<Pair<int, int>>> _getDelays(String inputPath) async {
    return run("magick identify -verbose \"$inputPath\"").then((result) {
      RegExp r = RegExp(r'Delay: (\d+)x(\d+)');
      return result.outLines.where(r.hasMatch).map((e) {
        var match = r.allMatches(e).first;
        return Pair(int.parse(match.group(1)!), int.parse(match.group(2)!));
      }).toList();
    });
  }

  static List<int> _getFramesToDelete(int framesCount) {
    if (framesCount <= 60) return List.empty();

    int toDeleteAmount = framesCount - 60;
    double step = 60;
    if (toDeleteAmount != 1) {
      step = (framesCount - 1 - toDeleteAmount) / (toDeleteAmount - 1);
    }

    double stepAcc = 0;
    List<int> result = [];
    for (var i = 0; i < framesCount - 1; i++) {
      if (stepAcc <= 0.001) {
        stepAcc += step;
        result.add(i + 1);
      } else {
        stepAcc -= 1;
      }
    }
    return result;
  }

  static _addDelays(Pair<int, int> d1, Pair<int, int> d2) {
    return Pair(d1.v1 + d2.v1, (d1.v2 + d2.v2) ~/ 2);
  }

  static Map<String, List<int>> _mapDelaysToFrames(
    List<Pair<int, int>> delays,
  ) {
    Map<String, List<int>> result = {};
    for (var i = 0; i < delays.length; i++) {
      var delay = delays[i];
      String key = "${delay.v1}x${delay.v2}";
      if (delay.v1 > 0) {
        result.update(key, (value) => value..add(i), ifAbsent: () => [i]);
      }
    }
    return result;
  }

  static _transferDelaysToOtherFrames(
    List<Pair<int, int>> delays,
    List<int> framesToDelete,
  ) {
    List<Pair<int, int>> result = List.from(delays);
    for (var i = result.length - 1; i > 0; i--) {
      if (framesToDelete.contains(i)) {
        result[i - 1] = _addDelays(result[i - 1], result[i]);
        result[i] = Pair(0, result[i].v2);
      }
    }
    return result;
  }

  // file operations commands
  static String convertToGif(String inputPath, String outputPath) {
    return "magick \"$inputPath\" -coalesce \"$outputPath\"";
  }

  static String setDelaysForFrames2(
    Map<String, List<int>> delays,
    String inputPath,
    String outputPath,
  ) {
    const defaultDelay = 5;
    List<String> ifs = [];
    for (var d in delays.entries) {
      ifs.add(
          "${d.value.map((e) => "t==$e").join("||")}?${d.key.split("x").first}");
    }

    return 'magick convert "$inputPath" -set delay "%[fx:${ifs.join(":")} : $defaultDelay]" "$outputPath"';
  }

  // static String setDelaysForFrames(String inputPath, String outputPath,List<Pair<int,int>> delaysList) {
  //   String clones = [
  //     for(int i = 0; )
  //   ].join(" ");
  // }

  static String removeFrames(
    String inputPath,
    String outputPath,
    List<int> framesIndexes,
  ) {
    String f = framesIndexes.join(",");
    return "magick convert -delete $f \"$inputPath\" \"$outputPath\"";
  }

  static String scaleAndCrop(
    String inputPath,
    String outputPath, [
    PixooSize size = PixooSize.p64,
  ]) {
    String s = size == PixooSize.p64 ? "64" : "32";
    return "magick \"$inputPath\" -resize ${s}x$s^ -gravity Center -crop ${s}x$s+0+0 +repage \"$outputPath\"";
  }

  static Future getEmotePrepCommands(
    String inputPath,
    String tmpPath,
    String outputPath, [
    PixooSize size = PixooSize.p64,
  ]) async {
    var delays = await _getDelays(inputPath);
    List<String> commands = [
      convertToGif(inputPath, tmpPath),
    ];
    
    if (delays.length > 60) {
      // remove frames
      var framesToDelete = _getFramesToDelete(delays.length);
      var delaysTransfered =
          _transferDelaysToOtherFrames(delays, framesToDelete);
      commands.add(
          setDelaysForFrames2(_mapDelaysToFrames(delaysTransfered), tmpPath, tmpPath));
      commands.add(removeFrames(tmpPath, tmpPath, framesToDelete));
    }
    commands.add(scaleAndCrop(tmpPath, outputPath, size));
    return commands;
  }
}
