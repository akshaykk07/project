import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
 final Color theam;
 final double radius;
  const Circle({super.key, required this.theam, required this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: radius,backgroundColor: theam,);
  }
}
