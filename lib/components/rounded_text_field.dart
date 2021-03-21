import 'package:flutter/material.dart';
import 'package:flutter_login_page/constants.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final Widget suffixIcon;
  final bool obscureText;

  RoundedTextField({
    this.hintText,
    this.icon,
    this.onChanged,
    this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryPurpleColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}

/// Usually the child uses a `TextField`.
class TextFieldContainer extends StatelessWidget {
  final Widget child;

  TextFieldContainer({
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width - 56,
      height: kRoundButtonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kRoundButtonHeight / 2),
        color: kPrimaryMagnoliaColor,
      ),
      child: child,
    );
  }
}
