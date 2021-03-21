import 'package:flutter/material.dart';
import 'package:flutter_login_page/constants.dart';
import 'package:flutter_login_page/pages/signup/sign_up_page.dart';

class TextSignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            kDontHaveAnAccount,
            style: TextStyle(color: kPrimaryPurpleColor),
          ),
          Text(
            kSignUp,
            style: TextStyle(
              color: kPrimaryPurpleColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return SignUpPage();
            },
          ),
        );
      },
    );
  }
}
