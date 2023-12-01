import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/widgets/text.dart';

import '../constants/colors.dart';


class Notificationbox extends StatelessWidget {
  final String titile;
  final String stitile;
  final String time;
  final String delete;
  final String img;
  Color theam;

  Notificationbox(
      {super.key,
      required this.titile,
      required this.stitile,
      required this.time,
      required this.delete,
      required this.img,
      this.theam = white});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10).r,
      child: Container(
        height: 121.h,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              spreadRadius: 1.0,
              color: Colors.grey.shade100,
              blurRadius: 10.10),
        ], color: theam, borderRadius: BorderRadius.circular(10).r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: white,
                radius: 30.r,
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                  height: 40.h,
                ),
              ),
              title: Apptext(
                  text: titile,
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
              subtitle: Apptext(
                  text: stitile,
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: maincolor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40).r,
                  child: Apptext(
                      text: time,
                      size: 11.sp,
                      weight: FontWeight.w400,
                      textcolor: maincolor),
                ),
                Apptext(
                    text: delete,
                    size: 11.sp,
                    weight: FontWeight.w400,
                    textcolor: Color(0XFFFF4B4B))
              ],
            )
          ],
        ),
      ),
    );
  }
}
