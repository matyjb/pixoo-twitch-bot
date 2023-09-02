import 'package:flutter/material.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/dashboard.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/settings/settings.dart';

class RouteNames {
  static const String dashboard = "/dashboard";
  static const String settings = "/settings";
}

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
        );
      case RouteNames.settings:
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        );
      default:
        return null;
    }
  }
}
