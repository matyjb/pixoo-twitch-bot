import 'package:flutter/material.dart';

class ChannelAvatar extends StatelessWidget {
  final String avatarUrl;
  const ChannelAvatar(this.avatarUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: CircleAvatar(
        backgroundImage: NetworkImage(avatarUrl),
      ),
    );
  }
}
