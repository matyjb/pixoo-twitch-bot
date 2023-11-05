import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';

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

const List<PixooDevice> debugPixooDevices = [
  PixooDevice(
    name: "P64",
    id: 4324324,
    privateIP: "192.168.1.40:8081",
    macAdress: "e4324324gf",
  ),
  PixooDevice(
    name: "P64",
    id: 5435436,
    privateIP: "192.168.1.57:8081",
    macAdress: "eghfds654645",
  ),
  PixooDevice(
    name: "P64",
    id: 4365524,
    privateIP: "192.168.1.12:8081",
    macAdress: "e43243424gf",
  ),
];

final HashSet<String> forbiddenChars = HashSet.of({
  "<",
  ">",
  ":",
  '"',
  "/",
  "\\",
  "|",
  "?",
  "*",
});
String encodeFileName(String name) {
  StringBuffer result = StringBuffer();
  for (final c in name.split("")) {
    if (forbiddenChars.contains(c)) {
      result.write("[${c.codeUnitAt(0)}]");
    } else {
      result.write(c);
    }
  }
  return result.toString();
}
