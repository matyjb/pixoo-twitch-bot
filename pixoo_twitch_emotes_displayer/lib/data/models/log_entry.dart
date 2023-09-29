import 'package:freezed_annotation/freezed_annotation.dart';
part 'log_entry.freezed.dart';
part 'log_entry.g.dart';

enum LogEntryType { info, error, action }

@freezed
class LogEntry with _$LogEntry {
  const factory LogEntry({
    required LogEntryType type,
    required String title,
    required String message,
    required DateTime timestamp,
  }) = _LogEntry;

  factory LogEntry.now({
    required LogEntryType type,
    required String title,
    required String message,
  }) =>
      _LogEntry(
        type: type,
        title: title,
        message: message,
        timestamp: DateTime.now(),
      );

  factory LogEntry.infoNow({required String title, required String message}) => _LogEntry(
        type: LogEntryType.info,
        title: title,
        message: message,
        timestamp: DateTime.now(),
      );

  factory LogEntry.errorNow({required String title, required String message}) => _LogEntry(
        type: LogEntryType.error,
        title: title,
        message: message,
        timestamp: DateTime.now(),
      );

  factory LogEntry.actionNow({required String title, required String message}) => _LogEntry(
        type: LogEntryType.action,
        title: title,
        message: message,
        timestamp: DateTime.now(),
      );

  factory LogEntry.fromJson(Map<String, Object?> json) => _$LogEntryFromJson(json);
}
