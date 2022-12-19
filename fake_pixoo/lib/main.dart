import 'dart:async';

import 'package:fake_pixoo/store/pixoo_server.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData.dark(),
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
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: _imageUrl != null
              ? DecorationImage(
                  image: NetworkImage(_imageUrl!),
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.none
                )
              : null,
        ),
      ),
    );
  }
}
