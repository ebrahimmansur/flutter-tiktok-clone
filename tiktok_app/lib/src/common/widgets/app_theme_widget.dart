import 'package:flutter/material.dart';
import 'package:tiktok_app/src/common/themes/theme.dart';

class AppThemeWidget extends InheritedWidget {
  final AppThemeDate data;
  const AppThemeWidget({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant AppThemeWidget oldWidget) =>
      data != oldWidget.data;

  static AppThemeDate of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<AppThemeWidget>();

    return widget!.data;
  }
}

extension AppThemeExtenstion on BuildContext {
  AppThemeDate get appTheme => AppThemeWidget.of(this);
}
