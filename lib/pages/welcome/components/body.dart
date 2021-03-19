import 'package:flutter/material.dart';
import 'package:flutter_login_page/components/rounded_button.dart';
import 'package:flutter_login_page/pages/welcome/components/background.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome to Edu',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            'assets/icons/chat.svg',
            width: size.width * 0.7,
          ),
          RoundedButton(
            title: 'LOGIN',
            titleColor: Colors.white,
            onPressed: () {
              print('login tapped');
            },
          )
        ],
      ),
    );
  }
}
