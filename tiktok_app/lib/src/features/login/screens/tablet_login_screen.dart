part of 'login_screen.dart';

class _TabletLoginScreen extends StatefulWidget {
  const _TabletLoginScreen({Key? key}) : super(key: key);

  @override
  State<_TabletLoginScreen> createState() => _TabletLoginScreenState();
}

class _TabletLoginScreenState extends State<_TabletLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Center(child: Text("Tablet Login")),
    ));
  }
}
