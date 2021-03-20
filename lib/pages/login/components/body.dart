import 'package:flutter/material.dart';
import 'package:flutter_login_page/components/rounded_button.dart';
import 'package:flutter_login_page/components/rounded_text_field.dart';
import 'package:flutter_login_page/pages/login/components/background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_login_page/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.width * 0.05),
            SvgPicture.asset(
              'assets/icons/login.svg',
              width: size.width * 0.7,
            ),
            RoundedTextField(
              hintText: 'Your email',
              icon: Icons.person,
              onChanged: (String value) {
                print(value);
              },
            ),
            RoundedTextField(
              hintText: 'Enter password',
              obscureText: true,
              icon: Icons.lock,
              suffixIcon: Icon(
                Icons.visibility,
                color: kPrimaryColor,
              ),
              onChanged: (String value) {
                print(value);
              },
            ),
            RoundedButton(
              title: 'LOGIN',
              titleColor: Colors.white,
              backgroundColor: kPrimaryColor,
              onPressed: () {},
            ),
            SizedBox(height: size.height * 0.03),
            SignUpButton(),
          ],
        ),
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don`t have an account? ',
            style: TextStyle(color: kPrimaryColor),
          ),
          Text(
            'Sign up',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      onTap: () {
        print('sign up tapped');
      },
    );
  }
}
