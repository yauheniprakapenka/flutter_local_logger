import 'package:flutter/material.dart';
import 'package:flutter_login_page/components/rounded_button.dart';
import 'package:flutter_login_page/constants.dart';
import 'package:flutter_login_page/pages/login/login_page.dart';
import 'package:flutter_login_page/pages/home/components/background.dart';
import 'package:flutter_login_page/pages/signup/sign_up_page.dart';

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
              kWelcomeToApp,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.width * 0.1),
            Image.asset(
              'assets/illustration/blogging.png',
              width: size.width * 0.9,
            ),
            SizedBox(height: size.width * 0.1),
            RoundedButton(
              title: kLogin,
              titleColor: Colors.white,
              buttonColor: kPrimaryPurpleColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
            SizedBox(height: size.width * 0.04),
            RoundedButton(
              title: kSignUp,
              titleColor: Colors.black,
              buttonColor: kPrimaryMagnoliaColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => SignUpPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
