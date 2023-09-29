import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pixoo_twitch_emotes_displayer/data/models/log_entry.dart';

writeToLog(LogEntryType type, String title, String message) {
  if (kDebugMode) {
    print("$title: $message");
  }
  LogsCubit.i.addLogEntry(switch (type) {
    LogEntryType.info => LogEntry.infoNow(title: title, message: message),
    LogEntryType.error => LogEntry.errorNow(title: title, message: message),
    LogEntryType.action => LogEntry.actionNow(title: title, message: message),
  });
}

typedef LogsState = List<LogEntry>;

class LogsCubit extends HydratedCubit<LogsState> {
  static final LogsCubit i = LogsCubit._();

  static const int logLength = 1000;

  LogsCubit._() : super([]);

  addLogEntry(LogEntry entry) {
    final newList = List.of(state)..add(entry);
    if (newList.length > logLength) {
      newList.removeRange(0, newList.length - logLength);
    }
    emit(newList);
  }

  removeLogEntry(LogEntry entry) {
    emit(List.of(state)..remove(entry));
  }

  @override
  LogsState? fromJson(Map<String, dynamic> json) =>
      [for (var e in json["simple_logs"] ?? []) LogEntry.fromJson(e)];

  @override
  Map<String, dynamic>? toJson(LogsState state) => {"simple_logs": state};
}
