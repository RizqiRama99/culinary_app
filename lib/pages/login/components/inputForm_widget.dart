import 'package:culinary_apps/main.dart';
import 'package:culinary_apps/main_componets/form_Error.dart';
import 'package:culinary_apps/main_componets/keyboardUtils.dart';
import 'package:culinary_apps/pages/home/main_screen.dart';
import 'package:culinary_apps/pages/login/components/sosMed_Login.dart';
import 'package:flutter/material.dart';
import 'package:culinary_apps/main_componets/buttons.dart';
import 'package:culinary_apps/pages/login/login_error_constants.dart';

class InputformWidget extends StatefulWidget {
  const InputformWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<InputformWidget> createState() => _InputformWidgetState();
}

class _InputformWidgetState extends State<InputformWidget> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String? email;
  String? password;
  bool remember = false;

  void addError({String? error}) {
    if (!errors.contains(error))
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (!errors.contains(error)) {
      setState(
        () {
          errors.remove(error);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: size.height * 0.02),
          // Email Input
          InputEmailField(),
          SizedBox(height: size.height * 0.04),
          // Password Input
          InputPasswordField(),
          SizedBox(height: size.height * 0.01),
          FormErrorWidget(errors: errors),
          SizedBox(height: size.height * 0.01),
          Row(
            children: [
              Checkbox(
                value: remember,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              const Text("Remember Me"),
              const Spacer(),
              const Text(
                "Forgot Password",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),

          PrimaryButton(
            text: "Log In",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MainScreen();
                    },
                  ),
                );
              }
            },
          ),
          const Divider(
            height: mainPadding * 2.5,
          ),
          SosMedLogin(size: size),
          SizedBox(height: size.height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "don't have accout,",
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          )
        ],
      ),
    );
  }

  TextFormField InputEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 42,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Colors.green,
          ),
          gapPadding: 18,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Colors.green.shade900,
            ),
            gapPadding: 18),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Colors.green.shade900,
            ),
            gapPadding: 18),
        suffixIcon: const Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Icon(Icons.mail_outline),
        ),
      ),

      // Error Handling
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: emptyEmail);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: invalidEmail);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: emptyEmail);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: invalidEmail);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField InputPasswordField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 42,
        ),
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Colors.green,
          ),
          gapPadding: 18,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Colors.green.shade900,
          ),
          gapPadding: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Colors.green.shade900,
          ),
          gapPadding: 18,
        ),
        suffixIcon: const Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Icon(Icons.lock),
        ),
      ),

      // Error Handling
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: emptyPassword);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: emptyPassword);
          return "";
        }
        return null;
      },
    );
  }
}
