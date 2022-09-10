import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pixoo_twitch_emotes_displayer/pages/app_config_page.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
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
