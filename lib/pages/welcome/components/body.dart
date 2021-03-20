import 'package:flutter/material.dart';
import 'package:flutter_login_page/components/rounded_button.dart';
import 'package:flutter_login_page/constants.dart';
import 'package:flutter_login_page/pages/login/login_page.dart';
import 'package:flutter_login_page/pages/welcome/components/background.dart';
import 'package:flutter_svg/svg.dart';

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
              'Welcome to Edu',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.width * 0.05),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              width: size.width * 0.7,
            ),
            SizedBox(height: size.width * 0.05),
            RoundedButton(
              title: 'LOGIN',
              titleColor: Colors.white,
              backgroundColor: kPrimaryColor,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ));
              },
            ),
            RoundedButton(
              title: 'LOGIN',
              titleColor: Colors.black,
              backgroundColor: kPrimaryLightColor,
              onPressed: () {
                print('login tapped');
              },
            )
          ],
        ),
      ),
    );
  }
}
