import 'package:flutter/material.dart';
import 'package:flutter_login_page/components/circle_button.dart';
import 'package:flutter_login_page/pages/signup/components/or_divider.dart';
import 'package:flutter_login_page/components/rounded_button.dart';
import 'package:flutter_login_page/components/rounded_text_field.dart';
import 'package:flutter_login_page/constants.dart';
import 'package:flutter_login_page/pages/signup/components/background.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: kTopAndBottonMargin),
            SvgPicture.asset(
              'assets/illustration/signup.svg',
              width: size.width * 0.7,
            ),
            SizedBox(height: size.width * 0.05),
            RoundedTextField(
              hintText: kYouEmail,
              icon: Icons.person,
              onChanged: (String value) {},
            ),
            RoundedTextField(
              hintText: kYourPassword,
              icon: Icons.lock,
              obscureText: true,
              suffixIcon: Icon(Icons.visibility),
              onChanged: (String value) {},
            ),
            SizedBox(height: size.width * 0.08),
            RoundedButton(
              title: kSignUp,
              titleColor: Colors.white,
              buttonColor: kPrimaryPurpleColor,
              onPressed: () {},
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 32),
              width: size.width - 56,
              child: Row(
                children: <Widget>[
                  OrDivider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      kOr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kPrimaryPurpleColor,
                      ),
                    ),
                  ),
                  OrDivider(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleButton(
                  icon: SvgPicture.asset(
                    'assets/logo/facebook.svg',
                    color: kPrimaryPurpleColor,
                  ),
                  onPressed: () {
                    print('facebook tapped');
                  },
                ),
                CircleButton(
                  icon: SvgPicture.asset(
                    'assets/logo/twitter.svg',
                    color: kPrimaryPurpleColor,
                  ),
                  onPressed: () {
                    print('twitter tapped');
                  },
                ),
                CircleButton(
                  icon: SvgPicture.asset(
                    'assets/logo/google.svg',
                    color: kPrimaryPurpleColor,
                  ),
                  onPressed: () {
                    print('google tapped');
                  },
                ),
              ],
            ),
            SizedBox(height: kTopAndBottonMargin),
          ],
        ),
      ),
    );
  }
}
