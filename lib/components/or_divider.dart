import 'package:flutter/material.dart';
import 'package:flutter_login_page/constants.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        color: kPrimaryMagnoliaColor,
        thickness: 2,
      ),
    );
  }
}
