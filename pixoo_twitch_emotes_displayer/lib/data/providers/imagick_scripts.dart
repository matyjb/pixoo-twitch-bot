import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/helpers/math.dart';
import 'package:process_run/shell_run.dart';

typedef FrameDelay = ({int value, int divider});

// extension on Never acts as namespace
extension ImagickScripts on Never {
  // helpers
  static Future<List<FrameDelay>> _getDelays(String inputPath) async {
    return run('magick identify -verbose "$inputPath"').then((result) {
      final RegExp r = RegExp(r'Delay: (\d+)x(\d+)');
      return result.outLines.where(r.hasMatch).map((e) {
        final match = r.allMatches(e).first;
        return (
          value: int.parse(match.group(1)!),
          divider: int.parse(match.group(2)!),
        );
      }).toList();
    });
  }

  static List<int> _getFramesToDelete(int framesCount) {
    if (framesCount <= 60) return List.empty();

    final int toDeleteAmount = framesCount - 60;
    double step = 60;
    if (toDeleteAmount != 1) {
      step = (framesCount - 1 - toDeleteAmount) / (toDeleteAmount - 1);
    }

    double stepAcc = 0;
    final List<int> result = [];
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

  static FrameDelay _addDelays(FrameDelay d1, FrameDelay d2) {
    final int divider = lcm(d1.divider, d2.divider);
    return (
      value: divider~/d1.divider*d1.value + divider~/d2.divider*d2.value,
      divider: divider,
    );
  }

  static Map<String, List<int>> _mapDelaysToFrames(
    List<FrameDelay> delays,
  ) {
    final Map<String, List<int>> result = {};
    for (var i = 0; i < delays.length; i++) {
      final delay = delays[i];
      final String key = "${delay.value}x${delay.divider}";
      if (delay.value > 0) {
        result.update(key, (value) => value..add(i), ifAbsent: () => [i]);
      }
    }
    return result;
  }

  static List<FrameDelay> _transferDelaysToOtherFrames(
    List<FrameDelay> delays,
    List<int> framesToDelete,
  ) {
    final List<FrameDelay> result = List.from(delays);
    for (var i = result.length - 1; i > 0; i--) {
      if (framesToDelete.contains(i)) {
        result[i - 1] = _addDelays(result[i - 1], result[i]);
        result[i] = (value: 0, divider: result[i].divider);
      }
    }
    return result;
  }

  // file operations commands
  static String convertToGif(String inputPath, String outputPath) {
    return 'magick "$inputPath" -coalesce "$outputPath"';
  }

  static String setDelaysForFrames2(
    Map<String, List<int>> delays,
    String inputPath,
    String outputPath,
  ) {
    const defaultDelay = 5;
    final List<String> ifs = [];
    for (final d in delays.entries) {
      ifs.add(
        "${d.value.map((e) => "t==$e").join("||")}?${d.key.split("x").first}",
      );
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
    final String f = framesIndexes.join(",");
    return 'magick convert -delete $f "$inputPath" "$outputPath"';
  }

  static String scaleAndCrop(
    String inputPath,
    String outputPath, [
    PixooSize size = PixooSize.x64,
  ]) {
    final String s = size == PixooSize.x64 ? "64" : "32";
    return 'magick "$inputPath" -resize ${s}x$s^ -gravity Center -crop ${s}x$s+0+0 +repage "$outputPath"';
  }

  static Future<List<String>> getEmotePrepCommands(
    String inputPath,
    String tmpPath,
    String outputPath, [
    PixooSize size = PixooSize.x64,
  ]) async {
    final delays = await _getDelays(inputPath);
    final List<String> commands = [
      convertToGif(inputPath, tmpPath),
    ];

    if (delays.length > 60) {
      // remove frames
      final framesToDelete = _getFramesToDelete(delays.length);
      final delaysTransfered = _transferDelaysToOtherFrames(delays, framesToDelete);
      commands.add(
        setDelaysForFrames2(
          _mapDelaysToFrames(delaysTransfered),
          tmpPath,
          tmpPath,
        ),
      );
      commands.add(removeFrames(tmpPath, tmpPath, framesToDelete));
    }
    commands.add(scaleAndCrop(tmpPath, outputPath, size));
    return commands;
  }
}
