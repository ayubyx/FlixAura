import 'package:fixaura/resource/colors.dart';
import 'package:fixaura/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Clrs.pc,
            appBarTheme: AppBarTheme(backgroundColor: Clrs.pc)),
        home: OnBoarding());
  }
}
