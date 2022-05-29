import 'providers/log_local_provider.dart';
import 'providers/log_provider.dart';

class LocalLogger {
  final LogProvider _logProvider = LogLocalProvider();

  Future<String> getLog() async {
    return _logProvider.getLog();
  }

  Future<void> writeLog(String log) async {
    await _logProvider.writeLog(log);
  }

  Future<void> writeException({
    required Exception exception,
    required StackTrace stackTrace,
  }) async {
    await _logProvider.writeException(exception: exception, stackTrace: stackTrace);
  }

  Future<void> writeError({required Error error}) async {
    await _logProvider.writeError(error: error);
  }

  Future<void> clearLog() async {
    await _logProvider.clearLog();
  }
}
