import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ThemeModeJsonConverter extends JsonConverter<ThemeMode, String> {
  const ThemeModeJsonConverter();

  @override
  ThemeMode fromJson(String json) {
    return ThemeMode.values.firstWhere(
      (value) => value.name == json,
      orElse: () => ThemeMode.system,
    );
  }

  @override
  String toJson(ThemeMode object) => object.name;
}
