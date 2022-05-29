import 'dart:async';
import 'dart:math';

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:local_logger/local_logger.dart';

class LocalLoggerScreen extends StatelessWidget {
  const LocalLoggerScreen();

  @override
  Widget build(BuildContext context) {
    final localLogger = serviceLocator.get<LocalLogger>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local logger'),
        leading: TextButton(
          child: const Text(
            'Back',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: const Text('Write log'),
              onPressed: () async {
                await localLogger.writeLog(
                  'Test text ${Random().nextInt(10000)}',
                );
              },
            ),
            OutlinedButton(
              child: const Text('Emulate error'),
              onPressed: () async {
                await emulateError();
              },
            ),
            OutlinedButton(
              child: const Text('Emulate exception'),
              onPressed: () async {
                await emulateException();
              },
            ),
            OutlinedButton(
              child: const Text('Print log'),
              onPressed: () async {
                final log = await localLogger.getLog();
                print(log);
              },
            ),
            OutlinedButton(
              child: const Text('Clear log'),
              onPressed: () async {
                await localLogger.clearLog();
              },
            ),
            OutlinedButton(
              child: const Text('Share log'),
              onPressed: () async {
                final log = await localLogger.getLog();
                await Share.share(log, subject: 'Local log');
              },
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> emulateError() async {
  final localLogger = serviceLocator.get<LocalLogger>();
  try {
    String? dog;
    await localLogger.writeLog('dog $dog');
    print(dog!);
  } on Error catch (error) {
    await localLogger.writeError(error: error);
  } on Exception catch (exception, stackTrace) {
    await localLogger.writeException(exception: exception, stackTrace: stackTrace);
  }
}

Future<void> emulateException() async {
  final localLogger = serviceLocator.get<LocalLogger>();
  try {
    throw TimeoutException('Server not responding');
  } on Error catch (error) {
    await localLogger.writeError(error: error);
  } on Exception catch (exception, stackTrace) {
    await localLogger.writeException(exception: exception, stackTrace: stackTrace);
  }
}
