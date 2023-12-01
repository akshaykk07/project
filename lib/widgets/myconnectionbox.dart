import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/widgets/text.dart';

import '../constants/colors.dart';

class conbox extends StatelessWidget {
  final String img;
  final String title;


  const conbox({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(10).r,
        child: Container(
         height: 180.h,
          width: 140.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: 1.0,
                  color: Colors.grey.shade300,
                  blurRadius: 10.10),
            ],
            borderRadius: BorderRadius.circular(20).r,
            color: white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15).r,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CircleAvatar(child: Image.asset(img),radius: 20.r),

              Apptext(
                  text: title,
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: black),
              Apptext(
                  text: "1M Followers",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
              Container(
                  width: 100.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20).r,
                      border: Border.all(color: btncolor)),
                  child: Center(
                    child: Apptext(
                        text: "Follow",
                        size: 12.sp,
                        weight: FontWeight.w400,
                        textcolor: black),
                  ))
            ]),
          ),
        ),
      );
  }
}
