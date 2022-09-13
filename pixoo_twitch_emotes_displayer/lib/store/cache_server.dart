import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pixoo_twitch_emotes_displayer/models/emote/emote.dart';
import 'package:shelf_static/shelf_static.dart';
import 'app_config.dart';
import 'dart:io';
import 'package:image/image.dart' as im;

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

  @observable
  String? emoteCachePath;

  @action
  void setEmoteCachePath(String path) {
    emoteCachePath = path;
  }

  Future<void> start() async {
    if (server != null) {
      server!.close(force: true);
    }
    String rootPath = "${(await getTemporaryDirectory()).path}\\PixooEmoteDisplayer";
    String emotesSubfolderPath = "emotes";
    Directory(rootPath).createSync();

    String path = "$rootPath\\$emotesSubfolderPath";
    Directory cache = Directory(path)..createSync();

    setEmoteCachePath(path);

    var handler =
        createStaticHandler(cache.path, defaultDocument: 'index.html');

    var selectedNetworkInterface = AppConfig().selectedNetworkInterface;
    if (selectedNetworkInterface != null) {
      String localIp = selectedNetworkInterface.addresses[0].address;
      server = await io.serve(handler, localIp, 8080).then((server) {
        if (kDebugMode) {
          print('Serving at http://${server.address.host}:${server.port}');
          print("Server root: $path");
        }
        return server;
      });
    } else {
      throw "Select NetworkInterface first before starting a server";
    }
  }

  Future<bool> prepareEmote(Emote emote) async {
    if (emoteCachePath != null) {
      String fileName =
          "${emote.code}_${emote.provider}_${AppConfig().size}.gif";
      // check cache if emote exists
      bool doesExist = File("$emoteCachePath\\$fileName").existsSync();
      if (!doesExist) {
        // if not: download it and scale it
        // save it to cache
        Uint8List bytes =
            (await NetworkAssetBundle(Uri.parse(emote.urls.first.url))
                    .load(emote.urls.first.url))
                .buffer
                .asUint8List();
        im.Image? image = im.decodeImage(bytes);
        if (image != null) {
          im.Image resizedImage = im.copyResizeCropSquare(image, 64);
          File(emoteCachePath!).createSync();
          File(emoteCachePath!).writeAsBytesSync(im.encodeGif(resizedImage));
          return true;
        }else{
          if (kDebugMode) {
            print("Could not decode emote");
          }
          return false;
        }
      }else{
        return true;
      }
    }
    return false;
  }
}
