import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:pixoo_twitch_emotes_displayer/models/pixoo_device.dart';
import 'package:shelf_static/shelf_static.dart';
import '../services/pixoo_api.dart';
import 'app_config.dart';
import 'dart:io';

// ignore: depend_on_referenced_packages
import 'package:shelf/shelf_io.dart' as io;

part '../generated/cache_server.g.dart';

class CacheServer extends _CacheServerBase with _$CacheServer {
  static final CacheServer _singleton = CacheServer._internal();

  factory CacheServer() {
    return _singleton;
  }

  CacheServer._internal();
}

enum CacheServerStatus { stopped, running, error }

abstract class _CacheServerBase with Store {
  HttpServer? server;

  @observable
  String? emoteCachePath;

  @observable
  String? tmpCachePath;

  @action
  void setEmoteCachePath(String path) {
    emoteCachePath = path;
  }

  @action
  void setTmpCachePath(String path) {
    emoteCachePath = path;
  }

  StreamController<String> emotesToSend = StreamController();
  StreamSubscription<String>? _subscription;

  Future<void> start() async {
    if (server != null) {
      server!.close(force: true);
    }

    var handler =
        createStaticHandler(emoteCachePath!, defaultDocument: 'index.html');

    var selectedNetworkInterface = AppConfig().selectedNetworkInterface;
    if (selectedNetworkInterface != null) {
      String localIp = selectedNetworkInterface.addresses[0].address;
      server = await io.serve(handler, localIp, 8080).then((server) {
        if (kDebugMode) {
          print('Serving at http://${server.address.host}:${server.port}');
          print("Server root: $emoteCachePath");
        }
        return server;
      });
      if (server != null) {
        _subscription ??=
            emotesToSend.stream.distinct().listen((emoteFileName) {
          PixooDevice? device = AppConfig().selectedPixooDevice;
          if (device != null) {
            PixooAPI.playGifFile(device.DevicePrivateIP,
                "http://${server!.address.host}:${server!.port}/$emoteFileName");
          }
        });
      } else {
        throw "Server could not start";
      }
    } else {
      throw "Select NetworkInterface first before starting a server";
    }
  }
}
