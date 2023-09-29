import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/logic/logs_cubit/logs_cubit.dart';
import 'package:pixoo_twitch_emotes_displayer/presentation/screens/dashboard/widgets/logs_list_tile.dart';

class LogsListView extends StatelessWidget {
  const LogsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogsCubit, LogsState>(
      builder: (context, logs) => ListView.builder(
        itemCount: logs.length,
        itemBuilder: (context, i) => LogsListTile(entry: logs[i]),
      ),
    );
  }
}
