import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:local_logger/local_logger.dart';

import 'app/local_logger_screen.dart';

void main() async {
  serviceLocator.registerSingleton<LocalLogger>(LocalLogger());
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LocalLoggerScreen(),
    );
  }
}
