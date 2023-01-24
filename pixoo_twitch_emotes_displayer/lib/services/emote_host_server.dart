import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/store/app_resources.dart';
import 'package:pixoo_twitch_emotes_displayer/store/user_settings.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_static/shelf_static.dart';

part '../generated/emote_host_server.g.dart';

enum EmoteHostServerStatus { stopped, starting, running }

class EmoteHostServer extends _EmoteHostServerBase with _$EmoteHostServer {
  static final EmoteHostServer instance = EmoteHostServer._internal();
  EmoteHostServer._internal();
}

abstract class _EmoteHostServerBase with Store {
  @observable
  HttpServer? _server;

  @observable
  EmoteHostServerStatus status = EmoteHostServerStatus.stopped;
  @action
  void setStatus(EmoteHostServerStatus value) {
    status = value;
  }

  String? get url => _server != null
      ? "http://${_server!.address.host}:${_server!.port}"
      : null;

  @action
  void stop() {
    _server?.close(force: true);
    _server = null;
    setStatus(EmoteHostServerStatus.stopped);
  }

  @action
  Future<void> start() async {
    stop();
    final handler = createStaticHandler(
      AppResources.instance.documentsPath,
      defaultDocument: 'index.html',
    );

    final selectedNetworkInterface =
        UserSettings.instance.selectedNetworkInterface;
    if (selectedNetworkInterface != null) {
      setStatus(EmoteHostServerStatus.starting);
      final String localIp = selectedNetworkInterface.addresses[0].address;
      _server = await io.serve(handler, localIp, 8080).then((server) {
        if (kDebugMode) {
          print('Serving at http://${server.address.host}:${server.port}');
          print("Server root: ${AppResources.instance.documentsPath}");
        }
        setStatus(EmoteHostServerStatus.running);
        return server;
      }).catchError((err) {
        setStatus(EmoteHostServerStatus.stopped);
        throw err as Object;
      });
    } else {
      throw "Select NetworkInterface first before starting a server";
    }
  }
}
