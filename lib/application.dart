import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:SMT_Airelanes/pages/splash_screen.dart';
import 'package:flutter/services.dart';

class Application extends StatefulWidget {
  const Application({Key key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {

    final primaryColor = Color(0xFF0d47a1);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: primaryColor,
    ));

    return EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/locale',
      useOnlyLangCode: true,
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData(
            primaryColor: Color(0xFF0d47a1),
            primaryColorLight: Color(0xFF5472d3),
            primaryColorDark: Color(0xFF002171),
            accentColor: Color(0xFFF69EAC),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
            ),
          ),
          home: SplashScreen(),
        );
      }),
    );
  }
}
