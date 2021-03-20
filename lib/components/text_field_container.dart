import 'package:flutter/material.dart';
import 'package:flutter_login_page/constants.dart';

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
