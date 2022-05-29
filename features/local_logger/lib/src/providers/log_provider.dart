abstract class LogProvider {
  Future<String> getLog();

  Future<void> writeLog(String log);

  Future<void> writeException({
    required Exception exception,
    required StackTrace stackTrace,
  });

  Future<void> writeError({required Error error});

  Future<void> clearLog();
}
