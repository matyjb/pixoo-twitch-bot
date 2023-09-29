import 'dart:async';
import 'dart:io';

import 'package:pixoo_twitch_emotes_displayer/data/models/log_entry.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/logs_cubit/logs_cubit.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_static/shelf_static.dart';

_writeToLog(LogEntryType type, String message) => writeToLog(type, "HTTP server", message);

class HttpHostServer {
  HttpServer? _server;

  String? get url => _server != null ? "http://${_server!.address.host}:${_server!.port}" : null;

  Future start(String directory, String localIp) async {
    await _stop();
    _writeToLog(LogEntryType.action, "Starting server...");
    final handler = createStaticHandler(
      directory,
      defaultDocument: 'index.html',
    );
    _server = await io.serve(handler, localIp, 8080).then((server) {
      _writeToLog(
        LogEntryType.info,
        "Server started http://${server.address.host}:${server.port}\nServer root: $directory",
      );
      return server;
    }).catchError((err) {
      _writeToLog(LogEntryType.error, err.toString());
      throw err as Object;
    });
  }

  Future _stop() async {
    await _server?.close(force: true).then((_) {
      _writeToLog(LogEntryType.info, "Server stopped");
      return _server = null;
    });
  }

  Future stop() async {
    _writeToLog(LogEntryType.action, "Stopping server...");
    await _stop();
  }
}
