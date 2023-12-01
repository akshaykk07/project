import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/widgets/text.dart';


import '../constants/colors.dart';

class postbox extends StatelessWidget {
  final String title;
  final String stitle;
  final String img;
  final String caption;
  final String content;

  const postbox(
      {super.key,
      required this.title,
      required this.stitle,
      required this.img,
      required this.caption,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10).r,
      child: Container(
        height: 300.h,
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
        child: Column(children: [
          Expanded(
              child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(5).r,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: white,
                        radius: 30.r,
                        child: Image.asset(
                          img,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Apptext(
                          text: title,
                          size: 12.sp,
                          weight: FontWeight.w700,
                          textcolor: maincolor),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.access_time_rounded,
                            size: 15,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Apptext(
                              text: stitle,
                              size: 10.sp,
                              weight: FontWeight.w400,
                              textcolor: maincolor),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20).r,
                      child: Apptext(
                          text: caption,
                          size: 12.sp,
                          weight: FontWeight.w700,
                          textcolor: maincolor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10).r,
                      child: Apptext(
                          text: content,
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: maincolor),
                    )
                  ]),
            ),
          )),
          Container(
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20).r,
                  bottomLeft: Radius.circular(20).r),
              color: btncolor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20).r,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Image.asset("assets/li.png"),
                      SizedBox(
                        width: 30.w,
                      ),
                      Image.asset("assets/cm.png"),
                    ]),
                    Image.asset("assets/sh.png")
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
