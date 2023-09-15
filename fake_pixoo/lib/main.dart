import 'dart:async';

import 'package:fake_pixoo/store/pixoo_server.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() async {
  await PixooServer().start();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake Pixoo',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(background: Colors.black),
      ),
      darkTheme: ThemeData.from(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(background: Colors.black),
      ),
      home: const MyHomePage(title: 'Fake Pixoo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _imageUrl;
  StreamSubscription<String>? _subscription;

  void _setImageUrl(String url) {
    print("[POST] $_imageUrl");
    setState(() {
      _imageUrl = url;
    });
  }

  @override
  void initState() {
    super.initState();
    _subscription = PixooServer().requestedImageUrls.listen(_setImageUrl);
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Observer(
              builder: (_) =>
                  Text(PixooServer().listeningOn ?? "server not started"),
            ),
            Container(
              constraints: const BoxConstraints.expand(),
              child: Display(_imageUrl),
            ),
          ],
        ),
      ),
    );
  }
}

class Display extends StatelessWidget {
  final String? imageUrl;
  const Display(this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.05),
        ),
        child: imageUrl == null
            ? Image.asset(
                "assets/pepeds.webp",
                filterQuality: FilterQuality.none,
              )
            : Image.network(
                imageUrl!,
                filterQuality: FilterQuality.none,
              ),
      ),
    );
  }
}
