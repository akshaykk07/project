import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/widgets/text.dart';

import '../constants/colors.dart';


class Searchscreenbox2 extends StatelessWidget {
  final String img;
  final String titile;
  final String stitile;
  final IconData ic;


  const Searchscreenbox2(
      {super.key,
      required this.img,
      required this.titile, required this.ic, required this.stitile,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10).r,
      child: Container(
        height: 230.h,
        width: double.infinity,
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
          padding: const EdgeInsets.all(10).r,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: white,
                    radius: 20.r,
                    child: Image.asset(img),
                  ),
                  trailing: Icon(
                    ic,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10).r,
                  child: Apptext(
                      text: titile,
                      size: 14.sp,
                      weight: FontWeight.w700,
                      textcolor: maincolor),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10).r,
                  child: Apptext(
                      text: "${stitile}. California, USA",
                      size: 12.sp,
                      weight: FontWeight.w400,
                      textcolor: maincolor),
                ),
                Padding(
                  padding: const EdgeInsets.all(5).r,
                  child: Row(
                    children: [
                      Expanded(child: smllbox("Design")),
                      Expanded(child: smllbox("Full time")),
                      Expanded(child: smllbox("Part time"))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Apptext(
                          text: "25 minute ago",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: Colors.grey),
                      Apptext(
                          text: "\$15K/Mo",
                          size: 12.sp,
                          weight: FontWeight.w700,
                          textcolor: maincolor)
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  Widget smllbox(String title) {
    return Padding(
      padding: const EdgeInsets.all(5).r,
      child: Container(
        height: 30.h,
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10).r,
          color: Colors.grey[300],
        ),
        child: Center(
            child: Apptext(
                text: title,
                size: 12.sp,
                weight: FontWeight.w400,
                textcolor: maincolor)),
      ),
    );
  }
}
