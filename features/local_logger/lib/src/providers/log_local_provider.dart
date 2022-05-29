import 'dart:io';

import 'package:core/core.dart';

import 'date_time_provider.dart';
import 'log_provider.dart';

class LogLocalProvider implements LogProvider {
  final String _currentDateTime = DateTimeProvider.getCurrentDateTime();

  @override
  Future<String> getLog() async {
    try {
      final file = await _getLocalFileWithLog;
      return await file.readAsString();
    } on Exception catch (_) {
      return '';
    }
  }

  @override
  Future<void> writeLog(String newLog) async {
    final file = await _getLocalFileWithLog;
    String log = await file.readAsString();
    log += '\n$_currentDateTime: $newLog';
    await file.writeAsString(log);
  }

  @override
  Future<void> writeException({
    required Exception exception,
    required StackTrace stackTrace,
  }) async {
    final file = await _getLocalFileWithLog;
    String log = await file.readAsString();
    log += '\n$_currentDateTime: 😡 EXCEPTION';
    log += '\n${exception.toString()}';
    log += '\nStack trace: ${stackTrace.toString()}';
    await file.writeAsString(log);
  }

  @override
  Future<void> writeError({required Error error}) async {
    final file = await _getLocalFileWithLog;
    String log = await file.readAsString();
    log += '\n$_currentDateTime: 😡 ERROR';
    log += '\n${error.toString()}';
    log += '\nStack trace: ${error.stackTrace.toString()}';
    await file.writeAsString(log);
  }

  @override
  Future<void> clearLog() async {
    final file = await _getLocalFileWithLog;
    await file.writeAsString('');
  }

  Future<String> get _getAppDirectoryPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _getLocalFileWithLog async {
    final path = await _getAppDirectoryPath;
    return File('$path/log.txt');
  }
}
