import 'package:SMT_Airelanes/pages/home_screen.dart';
import 'package:SMT_Airelanes/pages/home_screen.dart';
import 'package:animate_do/animate_do.dart';
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
     Future.delayed(Duration(milliseconds: 2500), () => _goToHomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              Theme.of(context).primaryColorDark,
              Theme.of(context).primaryColor,
            ],
          ),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            FadeInDown(
                child: Text("SMT",
                    style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold))),
            SizedBox(height: 30),
            FadeIn(
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
            SizedBox(height: 50),
            FadeInUp(
              delay: Duration(milliseconds: 1000),
              child: Text(
                "We are not the only ones,",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            SizedBox(height: 16),
            FadeInUp(
              delay: Duration(milliseconds: 1200),
                child: Text(
              "but we are the best",
              style: TextStyle(color: Colors.white, fontSize: 24),
            )),
          ],
        ),
      ),
    );
  }
}
