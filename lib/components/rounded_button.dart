import 'package:flutter/material.dart';
import 'package:flutter_login_page/constants.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color titleColor, backgroundColor;
  final Function onPressed;

  RoundedButton({
    @required this.title,
    @required this.titleColor,
    @required this.backgroundColor,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      height: kButtonHeight,
      width: size.width - 56,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kButtonHeight / 2),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed))
                  return Colors.blue[100];
                return backgroundColor;
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
