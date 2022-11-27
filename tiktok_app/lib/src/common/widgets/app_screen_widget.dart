import 'package:flutter/material.dart';
import 'package:tiktok_app/src/common/widgets/common_responsive_widget.dart';

class AppScreenWidget extends InheritedWidget {
  final ScreenBundle bundle;
  const AppScreenWidget({
    Key? key,
    required this.bundle,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant AppScreenWidget oldWidget) =>
      bundle != oldWidget.bundle;

  static ScreenBundle of(BuildContext context) {
    final widget =
        context.dependOnInheritedWidgetOfExactType<AppScreenWidget>();
    return widget!.bundle;
  }
}

extension AppThemeExtenstion on BuildContext {
  get appBundle => AppScreenWidget.of(this);
}
