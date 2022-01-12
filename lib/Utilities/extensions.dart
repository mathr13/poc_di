import 'package:flutter/material.dart';

extension TappableWidget on Widget {
  Widget onTap(Function() onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: this,
    );
  }
}

extension Navigation on Function {
  static Object navigateTo(BuildContext context, Widget destination) {
    return Navigator.push(context, MaterialPageRoute(
      builder: (context) => destination,
    ));
  }
}