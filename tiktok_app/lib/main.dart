import 'main_barrel.dart';

void main() async => AppLuncher.run(
      app: const TikTokApp(),
      runners: [
        WidgetsFlutterBindingConfigRunner(),
      ],
    );
