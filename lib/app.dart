import 'package:flutter/material.dart';
import 'package:yahara_grocery/screens/splash_screen.dart';
import 'package:yahara_grocery/styles/theme.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: SplashScreen(),
    );
  }
}
