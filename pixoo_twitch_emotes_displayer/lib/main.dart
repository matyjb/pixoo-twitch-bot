import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/app_config_page.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_config.dart';
import 'package:pixoo_twitch_emotes_displayer/store/cache_server.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emote_chooser.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  String emoteCachePath = await getApplicationDocumentsDirectory().then((value) {
    String path = "${value.path}\\PixooEmoteDisplayer\\emotes";
    Directory(path).createSync(recursive: true);
    return path;
  });
  String tmpCachePath = await getTemporaryDirectory().then((value) {
    String path = "${value.path}\\PixooEmoteDisplayer";
    Directory(path).createSync(recursive: true);
    return path;
  });
  CacheServer().emoteCachePath = emoteCachePath;
  CacheServer().tmpCachePath = tmpCachePath;
  EmoteChooser().startDirWatch();
  EmoteChooser().startMagickService();
  // startHostingCache();
  // startListeningChat("wirtual");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final title = 'Emote Pixoo Displayer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final appConfig = AppConfig();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: appConfig.init(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return const AppConfigPage();
        } else {
          return const Scaffold(body: CircularProgressIndicator());
        }
      },
    );
  }
}
