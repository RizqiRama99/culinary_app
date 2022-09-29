import 'package:culinary_apps/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:culinary_apps/pages/login/login.dart';

void main() {
  runApp(const MyApp());
}

const double mainPadding = 20;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mari Makan',
      theme: ThemeData(
        primaryColor: greenPrimary,
        backgroundColor: backgroundColor,
      ),
      home: const LoginScreen(),
    );
  }
}
