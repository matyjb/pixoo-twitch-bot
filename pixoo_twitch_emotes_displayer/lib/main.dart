import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/app_config/app_config_page.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_resources.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init("UserSettings");
  await AppResources.init();
  UserSettings.instance.load();
  runApp(const MyApp());
}

const title = 'Emote Pixoo Displayer';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const AppConfigPage();
  }
}
