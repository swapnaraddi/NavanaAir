import 'package:flutter/material.dart';
import 'package:navana_air/screens/launcher_screen/launcher_screen.dart';
import 'package:navana_air/screens/signup_screen.dart';
import 'package:navana_air/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/launcher': (context) => LauncherScreen(),
        '/signup': (context) => SignUpScreen(),
      },
      home: SplashScreen(),
    );
  }
}



