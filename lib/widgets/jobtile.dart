import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import 'text.dart';

class Jobtile extends StatelessWidget {
  final String img;
  final String title;
  final String stitle;
  const Jobtile({super.key, required this.img, required this.title, required this.stitle});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 10).r,
      child: Container(
        height: 180.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 30.0,
              spreadRadius: 10.10,
            ),],
            color: white, borderRadius: BorderRadius.circular(10).w),
        child: Padding(
          padding: const EdgeInsets.all(10).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: btncolor,
                    borderRadius: BorderRadius.circular(30).w,
                  ),
                  child: CircleAvatar(radius:20,backgroundColor: white,
                    child: Image.asset(
                     img,
                    ),
                  ),
                ),
                title: Apptext(
                    text: title,
                    size: 14.sp,
                    weight: FontWeight.w700,
                    textcolor: black),
                subtitle: Apptext(
                    text: "${stitle}. California, USA",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: black),
                trailing: const Icon(
                  Icons.bookmark_border,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20).r,
                child: Row(
                  children: [
                    Apptext(
                        text: "\$15k",
                        size: 14.sp,
                        weight: FontWeight.w600,
                        textcolor: black),
                    Apptext(
                        text: "/Mo",
                        size: 14.sp,
                        weight: FontWeight.w300,
                        textcolor: black),
                  ],
                ),
              ),
               SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 25.h,
                    width: 107.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).w,
                        color: Colors.grey[300]),
                    child: Center(
                        child: Apptext(
                            size: 10.sp,
                            weight: FontWeight.w400,
                            text: "Senior designer",
                            textcolor: maincolor)),
                  ),
                  Container(
                    height: 25.h,
                    width: 77.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).w,
                        color: Colors.grey[300]),
                    child: Center(
                        child: Apptext(
                            size: 10.sp,
                            weight: FontWeight.w400,
                            text: "Full time",
                            textcolor: maincolor)),
                  ),
                  Container(
                    height: 25.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).w,
                        color: Color(0xffFFD6AD)),
                    child: Center(
                        child: Apptext(
                            size: 10.sp,
                            weight: FontWeight.w400,
                            text: "Apply",
                            textcolor: maincolor)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
