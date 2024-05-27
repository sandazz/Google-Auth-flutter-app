import 'package:flutter/material.dart';
import 'package:google_signup/pages/login_page.dart';
import 'package:google_signup/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  // Initially show login page
  bool showLoginPage = true;

  // toggle login page
  void toggleLoginPage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: toggleLoginPage,
      );
    }else {
      return RegisterPage(
        onTap: toggleLoginPage,
      );
    }
  }
}
