import 'package:SMT_Airelanes/pages/home_screen.dart';
import 'package:SMT_Airelanes/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _goToHomePage() async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => HomeScreen()),
    );
  }

  @override
  void initState() {
    super.initState();

    //move to Home screen after 2sec
    Future.delayed(Duration(milliseconds: 2000), () => _goToHomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome".tr()),
      ),
    );
  }
}
