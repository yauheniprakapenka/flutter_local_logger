import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  Background({
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            width: size.width * 0.3,
            child: Image.asset('assets/images/bottom_left.png'),
          ),
          Positioned(
            top: 0,
            right: 0,
            width: size.width * 0.24,
            child: Image.asset('assets/images/top_right.png'),
          ),
          child,
        ],
      ),
    );
  }
}
