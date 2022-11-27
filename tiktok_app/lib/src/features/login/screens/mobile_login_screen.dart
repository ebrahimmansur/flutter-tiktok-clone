part of 'login_screen.dart';

class _MobileLoginScreen extends StatefulWidget {
  const _MobileLoginScreen({Key? key}) : super(key: key);

  @override
  State<_MobileLoginScreen> createState() => _MobileLoginScreenState();
}

class _MobileLoginScreenState extends State<_MobileLoginScreen> {
  @override
  Widget build(BuildContext context) {
    final screenBundle = AppScreenWidget.of(context);
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenBundle.screenSize.height * 0.05,
          ),
          Center(
            child: Text("Mobile login"),
          ),
        ],
      ),
    ));
  }
}
