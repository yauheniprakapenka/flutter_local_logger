import 'package:flutter/material.dart';
import 'package:flutter_login_page/constants.dart';

class CircleButton extends StatelessWidget {
  final Widget icon;
  final Function onPressed;

  CircleButton({
    @required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 1,
            color: kPrimaryMagnoliaColor,
          ),
        ),
        child: icon,
      ),
    );
  }
}
