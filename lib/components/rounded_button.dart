import 'package:flutter/material.dart';
import 'package:flutter_login_page/constants.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Function onPressed;

  RoundedButton({
    Key key,
    @required this.title,
    @required this.titleColor,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: kButtonSize,
      width: size.width - 32,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kButtonSize / 2),
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(_getColor)),
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

Color _getColor(Set<MaterialState> state) {
  Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };

  if (state.any(interactiveStates.contains)) {
    return kPrimaryLightColor;
  }

  return kPrimaryColor;
}
