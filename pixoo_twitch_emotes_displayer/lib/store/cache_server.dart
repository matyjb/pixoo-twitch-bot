import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shelf_static/shelf_static.dart';
import 'app_config.dart';
import 'dart:io';

// ignore: depend_on_referenced_packages
import 'package:shelf/shelf_io.dart' as io;

part 'cache_server.g.dart';

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

  Future<void> start() async {
    if(server != null) {
      server!.close(force: true);
    }

    String path = "${(await getTemporaryDirectory()).path}\\emotes";

    Directory cache =
        Directory(path);
    cache.createSync();
    
    var handler =
        createStaticHandler(cache.path, defaultDocument: 'index.html');
    
    var selectedNetworkInterface = AppConfig().selectedNetworkInterface;
    if(selectedNetworkInterface != null) {
      String localIp = selectedNetworkInterface.addresses[0].address;
      server = await io.serve(handler, localIp, 8080).then((server) {
        if (kDebugMode) {
          print('Serving at http://${server.address.host}:${server.port}');
          print("Server root: $path");
        }
        return server;
      });
    }else{
      throw "Select NetworkInterface first before starting a server";
    }
  }
}
