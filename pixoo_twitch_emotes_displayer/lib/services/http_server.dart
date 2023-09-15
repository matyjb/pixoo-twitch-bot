import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_static/shelf_static.dart';

class HttpHostServer {
  HttpServer? _server;

  String? get url => _server != null ? "http://${_server!.address.host}:${_server!.port}" : null;

  Future start(String directory, String localIp) async {
    await stop();
    final handler = createStaticHandler(
      directory,
      defaultDocument: 'index.html',
    );
    _server = await io.serve(handler, localIp, 8080).then((server) {
      if (kDebugMode) {
        print('Serving at http://${server.address.host}:${server.port}');
        print("Server root: $directory");
      }
      return server;
    }).catchError((err) {
      if (kDebugMode) {
        print(err);
      }
      throw err as Object;
    });
  }

  Future stop() async {
    await _server?.close(force: true).then((_) => _server = null);
  }
}
