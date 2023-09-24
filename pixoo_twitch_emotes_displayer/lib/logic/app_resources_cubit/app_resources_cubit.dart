import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/net_interface.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/pixoo_device.dart';
import 'package:pixoo_twitch_emotes_displayer/data/repositories/pixoo_repo.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pixoo_twitch_emotes_displayer/helpers/constants.dart';

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
      final String path = "${value.path}\\$documentsDirectoryName\\emotes";
      Directory(path).createSync(recursive: true);
      return path;
    });
    final String cachePath = await getTemporaryDirectory().then((value) {
      final String path = "${value.path}\\$documentsDirectoryName\\emotes";
      Directory(path).createSync(recursive: true);
      return path;
    });
    final networkInterfaces = await NetworkInterface.list(type: InternetAddressType.IPv4);
    final pixooDevices = List<PixooDevice>.from(await PixooDeviceRepo.getSameLANDevices());

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
