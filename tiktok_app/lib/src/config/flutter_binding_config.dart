import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tiktok_app/src/app/app_host.dart';

class WidgetsFlutterBindingConfigRunner implements IAppPreConfigurationRunner {
  @override
  FutureOr run() => WidgetsFlutterBinding.ensureInitialized();
}
