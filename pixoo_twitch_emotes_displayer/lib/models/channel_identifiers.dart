// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part '../generated/channel_identifiers.freezed.dart';
part '../generated/channel_identifiers.g.dart';

@freezed
class ChannelIdentifiers with _$ChannelIdentifiers {
  const factory ChannelIdentifiers({
    required int id,
    required String login,
    required String display_name,
    required String avatar,
  }) = _ChannelIdentifiers;

  factory ChannelIdentifiers.fromJson(Map<String, Object?> json) =>
      _$ChannelIdentifiersFromJson(json);
}
