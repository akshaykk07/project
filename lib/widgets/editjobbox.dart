import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/widgets/text.dart';

import '../constants/colors.dart';

class Editjob_box extends StatelessWidget {
  const Editjob_box({super.key, required this.title, required this.stitle, required this.click});
final String title;
final String stitle;
final void Function() click;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20).r,
          color: white, boxShadow: [
            BoxShadow(
                spreadRadius: 1.0,
                color: Colors.grey.shade100,
                blurRadius: 10.10),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10).r,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Apptext(text: title, size: 14.sp, weight: FontWeight.w700, textcolor: black),
                  InkWell(
                      onTap: click,
                      child: Image.asset("assets/Edit.png",width: 24.w,height: 24.h,))],),
              Apptext(text: stitle, size: 12.sp, weight: FontWeight.w400, textcolor: black),
            ]),
      ),
    );
  }
}

