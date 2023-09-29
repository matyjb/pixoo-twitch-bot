import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/log_entry.dart';

class LogsListTile extends StatelessWidget {
  final LogEntry entry;
  const LogsListTile({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    final color = switch (entry.type) {
      LogEntryType.action => Colors.yellow,
      LogEntryType.error => Colors.red,
      LogEntryType.info => Colors.cyan,
    };
    final icon = switch (entry.type) {
      LogEntryType.action => Icons.add_task_rounded,
      LogEntryType.error => Icons.error_outline_rounded,
      LogEntryType.info => Icons.info_outline_rounded,
    };
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(horizontal: BorderSide(color: color.withOpacity(0.7))),
        color: color.withOpacity(0.1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              child: Tooltip(
                message: entry.type.name,
                child: Icon(
                  icon,
                  color: color,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    entry.title,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    entry.message,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(DateFormat('dd-MM-yyyy').format(entry.timestamp)),
                Text(DateFormat('HH:mm:ss').format(entry.timestamp)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
