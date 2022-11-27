import 'package:flutter/material.dart';
import 'package:tiktok_app/main.dart';

class TikTokMaterialApp extends StatelessWidget {
  const TikTokMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TikTok App',
        onGenerateTitle: (context) => "TikTok App",
        home: const MyHomePage(title: "TikTok clone app"),
      );
}
