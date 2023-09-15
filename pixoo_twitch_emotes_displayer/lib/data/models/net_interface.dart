import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'net_interface.freezed.dart';
part 'net_interface.g.dart';

@freezed
class NetInterface with _$NetInterface {
  const factory NetInterface({
    required String name,
    required List<String> addresses,
  }) = _NetInterface;

  factory NetInterface.fromJson(Map<String, Object?> json) => _$NetInterfaceFromJson(json);

  factory NetInterface.fromNetworkInterface(NetworkInterface interface) => NetInterface(
        name: interface.name,
        addresses: interface.addresses.map((e) => e.address).toList(),
      );
}
