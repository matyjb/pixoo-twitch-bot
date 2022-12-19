import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:shelf/shelf.dart';
import 'dart:io';

// ignore: depend_on_referenced_packages
import 'package:shelf/shelf_io.dart' as io;

part 'pixoo_server.g.dart';

class PixooServer extends _PixooServerBase with _$PixooServer {
  static final PixooServer _singleton = PixooServer._internal();

  factory PixooServer() {
    return _singleton;
  }

  PixooServer._internal();
}

abstract class _PixooServerBase with Store {
  @observable
  HttpServer? _server;

  @computed
  String? get listeningOn => _server != null ? "${_server!.address.host}:${_server!.port}" : null;

  final StreamController<String> _requestedImageUrlsController =
      StreamController();
  Stream<String> get requestedImageUrls => _requestedImageUrlsController.stream;

  Future<Response> _echoRequest(Request request) async {
    if (request.method == "POST") {
      try {
        dynamic body = jsonDecode(await request.readAsString());
        if (request.url.path.toString() == "post") {
          String command = body["Command"]; //"Device/PlayTFGif"
          int fileType = body["FileType"] as int; //2
          String fileName = body["FileName"]; //Uri.parse(emoteUrl)
          if (command == "Device/PlayTFGif" && fileType == 2) {
            _requestedImageUrlsController.sink.add(fileName);
            return Response.ok("Requested $fileName");
          }
        }
      } catch (e) {
        print(e);
      }
    }
    return Response.notFound(
        'Requested operation for "${request.url}" not found');
  }

  @action
  Future<void> start() async {
    if (_server != null) {
      _server!.close(force: true);
    }

    var handler =
        const Pipeline().addMiddleware(logRequests()).addHandler(_echoRequest);

    var interfaces = await NetworkInterface.list(type: InternetAddressType.IPv4);

    _server = await io.serve(handler, interfaces.first.addresses.first.address, 80).then((server) {
      if (kDebugMode) {
        print('Serving at http://${server.address.host}:${server.port}');
      }
      return server;
    });
  }
}
