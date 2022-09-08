import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:shelf_static/shelf_static.dart';
// ignore: depend_on_referenced_packages
import 'package:shelf/shelf_io.dart' as io;

Future<HttpServer> startHostingCache() async {
  Directory cache = Directory("${(await getTemporaryDirectory()).path}/emotes");
  cache.createSync();
  print(cache.path);
  var handler = createStaticHandler(cache.path, defaultDocument: 'index.html');

  List<NetworkInterface> interfaces =
      await NetworkInterface.list(type: InternetAddressType.IPv4);
  // TODO: Make a select box for the interface
  String localIp = interfaces[0].addresses[0].address;

  return io.serve(handler, localIp, 8080).then((server) {
    print('Serving at http://${server.address.host}:${server.port}');
    return server;
  });
}