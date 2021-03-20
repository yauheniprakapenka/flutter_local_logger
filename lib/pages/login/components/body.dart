import 'package:flutter/material.dart';
import 'package:flutter_login_page/components/rounded_button.dart';
import 'package:flutter_login_page/components/rounded_text_field.dart';
import 'package:flutter_login_page/components/text_sign_up_button.dart';
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
            SizedBox(height: size.width * 0.05),
            SvgPicture.asset(
              'assets/illustration/login.svg',
              width: size.width * 0.7,
            ),
            RoundedTextField(
              hintText: kYouEmail,
              icon: Icons.person,
              onChanged: (String value) {
                print(value);
              },
            ),
            RoundedTextField(
              hintText: kYourPassword,
              obscureText: true,
              icon: Icons.lock,
              suffixIcon: Icon(
                Icons.visibility,
                color: kPrimaryPurpleColor,
              ),
              onChanged: (String value) {
                print(value);
              },
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              title: kLogin,
              titleColor: Colors.white,
              buttonColor: kPrimaryPurpleColor,
              onPressed: () {},
            ),
            SizedBox(height: size.height * 0.03),
            TextSignUpButton(),
          ],
        ),
      ),
    );
  }
}
