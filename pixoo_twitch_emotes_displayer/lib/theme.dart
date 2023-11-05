import 'package:flutter/material.dart';
import 'package:system_theme/system_theme.dart';

ThemeData lightTheme(SystemAccentColor seedColor) => ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: seedColor.light,
  ),
  useMaterial3: true,
);

ThemeData darkTheme(SystemAccentColor seedColor) => ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: seedColor.light,
    brightness: Brightness.dark
  ),
  useMaterial3: true,
);
