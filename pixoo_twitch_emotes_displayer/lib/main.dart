import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pixoo_twitch_emotes_displayer/helpers/constants.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/app_resources_cubit/app_resources_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/settings_cubit/settings_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/router.dart';
import 'package:pixoo_twitch_emotes_displayer/theme.dart';
import 'package:system_theme/system_theme.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (isDesktop) {
    await WindowManager.instance.ensureInitialized();
    windowManager.waitUntilReadyToShow().then((_) async {
      await windowManager.setSize(const Size(500, 800));
      await windowManager.setMinimumSize(const Size(400, 600));
      await windowManager.show();
    });
  }
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory:
        Directory("${(await getApplicationDocumentsDirectory()).path}\\$documentsDirectoryName")
          ..createSync(),
  );
  SystemTheme.fallbackColor = Colors.green[300]!;
  await SystemTheme.accentColor.load();
  await AppResourcesCubit.i.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: AppResourcesCubit.i,
        ),
        BlocProvider.value(
          value: SettingsCubit.i,
        ),
      ],
      child: SystemThemeBuilder(
        builder: (context, accent) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: appName,
          theme: lightTheme(accent),
          darkTheme: darkTheme(accent),
          themeMode: ThemeMode.system,
          onGenerateRoute: _appRouter.onGenerateRoute,
          initialRoute: RouteNames.settings,
        ),
      ),
    );
  }

  @override
  void dispose() {
    AppResourcesCubit.i.close();
    SettingsCubit.i.close();
    super.dispose();
  }
}
