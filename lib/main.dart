import 'package:flutter/material.dart';
import 'package:flutter_login_page/Pages/welcome/welcome_page.dart';
import 'package:flutter_login_page/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomePage(),
    );
  }
}
