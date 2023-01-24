import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../services/emote_host_server.dart';

const Map<EmoteHostServerStatus, Color> statusToColorMap = {
  EmoteHostServerStatus.stopped: Colors.grey,
  EmoteHostServerStatus.starting: Colors.blue,
  EmoteHostServerStatus.running: Colors.green,
};

class EmoteHostServerStatusIndicator extends StatelessWidget {
  EmoteHostServerStatusIndicator({super.key});

  final EmoteHostServer _emoteHostServer = EmoteHostServer.instance;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Icon(
        Icons.circle,
        color: statusToColorMap[_emoteHostServer.status],
      ),
    );
  }
}
