class DateTimeProvider {
  /// Example result: [28-05-2022 12:58:00]
  static String getCurrentDateTime() {
    final DateTime dateTime = DateTime.now();
    final String currentTime = _getCurrentTime(dateTime);
    final String currentDate = _getCurrentDate(dateTime);
    return '[$currentDate $currentTime]';
  }

  static String _getCurrentTime(DateTime dateTime) {
    final String hour = dateTime.hour.toString().padLeft(2, '0');
    final String minute = dateTime.minute.toString().padLeft(2, '0');
    final String second = dateTime.second.toString().padLeft(2, '0');
    return '$hour:$minute:$second';
  }

  static String _getCurrentDate(DateTime dateTime) {
    final String day = dateTime.day.toString().padLeft(2, '0');
    final String month = dateTime.month.toString().padLeft(2, '0');
    final String year = dateTime.year.toString();
    return '$day-$month-$year';
  }
}
