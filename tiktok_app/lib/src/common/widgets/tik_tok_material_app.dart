import 'package:flutter/material.dart';
import 'package:tiktok_app/main.dart';
import 'package:tiktok_app/src/common/themes/theme.dart';
import 'package:tiktok_app/src/common/widgets/app_screen_widget.dart';
import 'package:tiktok_app/src/common/widgets/app_theme_widget.dart';
import 'package:tiktok_app/src/common/widgets/common_responsive_widget.dart';
import 'package:tiktok_app/src/common/widgets/common_text_scale_factor.dart';

class TikTokMaterialApp extends StatelessWidget {
  const TikTokMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apptheme = AppThemeDate.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok App',
      onGenerateTitle: (context) => "TikTok App",
      home: AppThemeWidget(
          data: apptheme,
          child: CommonTextScaleFactorWidget(
              child: ResponsiveWidget(
            builder: (context, bundle) => AppScreenWidget(
                bundle: bundle,
                child: const MyHomePage(title: "TikTok clone app")),
          ))),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: apptheme.appColorData.screenBackgroundColor,
      ),
    );
  }
}
