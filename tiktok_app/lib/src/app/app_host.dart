import 'dart:async';

import 'package:flutter/material.dart';

///Clear way of setting up your application lunching process.
///[runners] run pre-configuration when the program starts
abstract class AppLuncher {
  const AppLuncher._();
  static Future<void> run({
    List<IAppPreConfigurationRunner> runners = const [],
    required Widget app,
  }) async {
    await Future.forEach<IAppPreConfigurationRunner>(
      runners,
      (runner) async => await runner.run(),
    );
    runApp(app);
  }
}

abstract class IAppPreConfigurationRunner {
  FutureOr run();
}
