import 'package:flutter/material.dart';

class CommonTextScaleFactorWidget extends StatelessWidget {
  final double textScale;
  final Widget child;

  /// Creates a widget that bindes the [textScaleFactor] with 1.0.
  const CommonTextScaleFactorWidget({
    Key? key,
    this.textScale = 1.0,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mqData = MediaQuery.of(context);
    final mqDataNew = mqData.copyWith(textScaleFactor: textScale);
    return MediaQuery(
      data: mqDataNew,
      child: child,
    );
  }
}
