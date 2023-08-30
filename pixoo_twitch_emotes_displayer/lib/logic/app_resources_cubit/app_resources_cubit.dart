import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/net_interface.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/data/repositories/pixoo_repo.dart';
import 'package:path_provider/path_provider.dart';

part 'app_resources_state.dart';
part 'app_resources_cubit.freezed.dart';

class AppResourcesCubit extends Cubit<AppResourcesState> {
  static final AppResourcesCubit i = AppResourcesCubit._();

  AppResourcesCubit._() : super(const AppResourcesState.initial());

  // ignore: library_private_types_in_public_api
  _Loaded get loadedState => i.state.map(
        initial: (_) => throw Exception("AppResourcesCubit not initialized before getting state"),
        loaded: (s) => s,
      );

  Future init() async {
    final String docsPath = await getApplicationDocumentsDirectory().then((value) {
      final String path = "${value.path}\\PixooEmoteDisplayer\\emotes";
      Directory(path).createSync(recursive: true);
      return path;
    });
    final String cachePath = await getTemporaryDirectory().then((value) {
      final String path = "${value.path}\\PixooEmoteDisplayer\\emotes";
      Directory(path).createSync(recursive: true);
      return path;
    });
    final networkInterfaces = await NetworkInterface.list(type: InternetAddressType.IPv4);
    final pixooDevices = await PixooDeviceRepo.getSameLANDevices();

    if (kDebugMode) {
      pixooDevices.addAll(debugPixooDevices);
    }

    emit(_Loaded(
      cachePath: cachePath,
      docsPath: docsPath,
      networkInterfaces: networkInterfaces.map(NetInterface.fromNetworkInterface).toList(),
      pixooDevices: pixooDevices,
    ));
  }

  Future refreshNetworkDevices() async {
    final networkInterfaces = await NetworkInterface.list(type: InternetAddressType.IPv4);
    emit(loadedState.copyWith(
      networkInterfaces: networkInterfaces.map(NetInterface.fromNetworkInterface).toList(),
    ));
  }

  Future refreshPixooDevices() async {
    final pixooDevices = await PixooDeviceRepo.getSameLANDevices();

    if (kDebugMode) {
      pixooDevices.addAll(debugPixooDevices);
    }
    emit(loadedState.copyWith(pixooDevices: pixooDevices));
  }
}

// ############################
// ############################
// ############################
// ############################
const List<PixooDevice> debugPixooDevices = [
  PixooDevice(
    name: "P64 192.168.1.40:8081",
    id: 4324324,
    privateIP: "192.168.1.40:8081",
    macAdress: "e4324324gf",
  ),
  PixooDevice(
    name: "P64 192.168.1.57:8081",
    id: 5435436,
    privateIP: "192.168.1.57:8081",
    macAdress: "eghfds654645",
  ),
  PixooDevice(
    name: "P64 192.168.1.12:8081",
    id: 4365524,
    privateIP: "192.168.1.12:8081",
    macAdress: "e43243424gf",
  ),
];