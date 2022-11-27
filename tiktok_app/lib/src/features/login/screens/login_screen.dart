import 'package:flutter/material.dart';
import 'package:tiktok_app/src/common/widgets/app_screen_widget.dart';
part 'mobile_login_screen.dart';
part 'tablet_login_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppScreenWidget.of(context).isMobile
      ? const _MobileLoginScreen()
      : const _TabletLoginScreen();
}
