import 'package:culinary_apps/colors/colors.dart';
import 'package:culinary_apps/main.dart';
import 'package:culinary_apps/pages/login/components/inputForm_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "LOG IN",
          style: TextStyle(
            color: greenPrimary,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFFFAFAFA),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: mainPadding),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                      color: Colors.green.shade800,
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  const Text(
                    "Please Log in first with your email and password",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: size.height * 0.04),
                  const InputformWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
