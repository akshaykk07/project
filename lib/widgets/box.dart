import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/widgets/text.dart';


import '../constants/colors.dart';

class Box extends StatelessWidget {
  final String title;
  final String stitle;
  final Color theam;
  final Color txttheam;
  final String Icon;

  const Box(
      {super.key,
      required this.title,
      required this.stitle,
      required this.theam,
      required this.Icon,
      required this.txttheam});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      width: 150.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              spreadRadius: 1.0,
              color: Colors.grey.shade100,
              blurRadius: 10.10),
        ],
        borderRadius: BorderRadius.circular(20).r,
        color: theam,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20).r,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset(
            Icon,
            width: 67.w,
            height: 67.h,
          ),
          Apptext(
              text: title,
              size: 14.sp,
              weight: FontWeight.w700,
              textcolor: txttheam),
          Apptext(
              text: stitle,
              size: 12.sp,
              weight: FontWeight.w400,
              textcolor: txttheam)
        ]),
      ),
    );
  }
}
