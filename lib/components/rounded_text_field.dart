import 'package:flutter/material.dart';
import 'package:flutter_login_page/components/text_field_container.dart';
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
