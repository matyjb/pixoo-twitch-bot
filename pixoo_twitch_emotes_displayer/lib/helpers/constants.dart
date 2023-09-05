import 'package:flutter/foundation.dart';

const String appName = "pixoo_twitch_emotes_displayer";

const String documentsDirectoryName = "PixooEmoteDisplayer";

bool get isDesktop {
  if (kIsWeb) return false;
  return [
    TargetPlatform.windows,
    TargetPlatform.linux,
    TargetPlatform.macOS,
  ].contains(defaultTargetPlatform);
}
