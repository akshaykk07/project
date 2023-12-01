import 'package:flutter/material.dart';
import 'package:project/widgets/text.dart';


import '../constants/colors.dart';

class Addjob_box extends StatelessWidget {
  const Addjob_box({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: white, boxShadow: [
            BoxShadow(
                spreadRadius: 1.0,
                color: Colors.grey.shade100,
                blurRadius: 10.10),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Apptext(text: title, size: 14, weight: FontWeight.w700, textcolor: black),Image.asset("assets/Add.png",width: 24,height: 24,)],),
      ),
    );
  }
}

