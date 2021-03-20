import 'package:flutter/material.dart';
import 'package:flutter_login_page/constants.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color titleColor, buttonColor;
  final Function onPressed;

  RoundedButton({
    this.title,
    this.titleColor,
    this.buttonColor,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: kRoundButtonHeight,
      width: size.width - 56,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kRoundButtonHeight / 2),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed))
                  return Colors.blue[100];
                return buttonColor;
              },
            ),
          ),
          child: Text(
            title,
            style: TextStyle(color: titleColor),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
