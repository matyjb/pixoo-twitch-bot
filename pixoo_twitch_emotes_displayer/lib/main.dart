import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pixoo_twitch_emotes_displayer/store/emotes.dart';
import 'cache_server/cache_server.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  startHostingCache();
  await GetStorage.init();
  //startListeningChat("wirtual");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Emote Pixoo Displayer',
      themeMode: ThemeMode.dark,
      home: MyHomePage(title: 'Emote Pixoo Displayer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final emotes = Emotes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
          future: emotes.init(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Settings();
            } else {
              return const CircularProgressIndicator();
            }
          }),
    );
  }
}

class Settings extends StatelessWidget {
  Settings({Key? key}) : super(key: key);

  final emotes = Emotes();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Observer(
            builder: (context) => DropdownButton<int>(
              value: emotes.selectedNetworkInterfaceIndex,
              items: emotes.networkInterfaces.asMap().entries
                  .map<DropdownMenuItem<int>>(
                    (e) => DropdownMenuItem<int>(
                      value: e.key,
                      child: Text(e.value.name),
                    ),
                  )
                  .toList(),
              onChanged: emotes.selectNetworkInterface,
            ),
          ),
          Observer(
            builder: (context) => DropdownButton<int>(
              value: emotes.selectedPixooDeviceIndex,
              items: emotes.pixooDevices
                  .asMap()
                  .entries
                  .map<DropdownMenuItem<int>>(
                    (e) => DropdownMenuItem<int>(
                      value: e.key,
                      child: Text(e.value.DeviceName),
                    ),
                  )
                  .toList(),
              onChanged: emotes.selectPixooDevice,
            ),
          ),
        ],
      ),
    );
  }
}
