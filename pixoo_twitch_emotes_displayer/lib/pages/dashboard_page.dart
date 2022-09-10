import 'package:flutter/material.dart';
import 'package:pixoo_twitch_emotes_displayer/widgets/service_controller_icon_button.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Center(
        child: ServiceControllerIconButton(),
      ),
    );
  }
}
