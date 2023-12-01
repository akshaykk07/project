import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/text.dart';

class Sharedjob_screen extends StatelessWidget {
  const Sharedjob_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        backgroundColor: backcolor,
        appBar: AppBar(
          backgroundColor: backcolor,
          elevation: 0,
         iconTheme: IconThemeData(color: maincolor),
          actions: [
            Apptext(
                text: "Post",
                size: 12.sp,
                weight: FontWeight.w700,
                textcolor: saffron),
            SizedBox(
              width: 20.w,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10).r,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 15).r,
              child: Apptext(
                  text: "Shared a Job",
                  size: 16.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25.r,
                child: Image.asset("assets/men.png"),
              ),
              title: Apptext(
                  text: "Orlando Diggs",
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
              subtitle: Apptext(
                  text: "California, USA",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
              child: Apptext(
                  text: "Description",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 300.h,
                    width: double.infinity.w,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 1.0,
                          color: Colors.grey.shade300,
                          blurRadius: 10.10),
                    ], borderRadius: BorderRadius.circular(10).r, color: white),
                    child: Padding(
                      padding: const EdgeInsets.all(20).r,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10).r,
                              child: Apptext(
                                  text: "Hey guys",
                                  size: 12.sp,
                                  weight: FontWeight.w400,
                                  textcolor: maincolor),
                            ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Apptext(
                                      text:
                                      "Today I am opening a job vacancy in the field of",
                                      size: 12.sp,
                                      weight: FontWeight.w400,
                                      textcolor: maincolor),
                                  Apptext(
                                      text: " UI",
                                      size: 14.sp,
                                      weight: FontWeight.w600,
                                      textcolor: maincolor),
                                ],
                              ),
                              Row(
                                children: [
                                  Apptext(
                                      text: "UI/UX Designer",
                                      size: 14.sp,
                                      weight: FontWeight.w600,
                                      textcolor: maincolor),
                                  Apptext(
                                      text: "at an ",
                                      size: 12.sp,
                                      weight: FontWeight.w400,
                                      textcolor: maincolor),
                                  Apptext(
                                      text: "Apple company.",
                                      size: 14.sp,
                                      weight: FontWeight.w600,
                                      textcolor: maincolor),
                                  Expanded(
                                    child: Apptext(
                                        text: "To see a job",
                                        size: 12.sp,
                                        weight: FontWeight.w400,
                                        textcolor: maincolor),
                                  ),
                                ],
                              ),
                              Apptext(
                                  text: "description, please see below.",
                                  size: 12.sp,
                                  weight: FontWeight.w400,
                                  textcolor: maincolor),
                            ],
                          ),
                            Container(
                                height: 150.h,
                                width: double.infinity.w,
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          spreadRadius: 1.0,
                                          color: Colors.white,
                                          blurRadius: 10.10),
                                    ],
                                    borderRadius: BorderRadius.circular(10).r,
                                    color: Colors.grey[300]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                        radius: 20.r,
                                        child: Image.asset("assets/goo (3).png"),
                                      ),
                                      title: Apptext(
                                          text: "UI/UX Designer",
                                          size: 12.sp,
                                          weight: FontWeight.w700,
                                          textcolor: black),
                                      subtitle: Apptext(
                                          text:
                                              "Job vacancies from Apple company\nCalifornia, USA. On-site",
                                          size: 12.sp,
                                          weight: FontWeight.w400,
                                          textcolor: black),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 70, right: 70).r,
                                      child: Container(
                                        height: 40.h,
                                        width: double.infinity.w,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: black),
                                            borderRadius: BorderRadius.circular(10).r,
                                            color: Colors.grey[300]),
                                        child: Center(
                                            child: Apptext(
                                                text: "Application details",
                                                size: 12.sp,
                                                weight: FontWeight.w400,
                                                textcolor: black)),
                                      ),
                                    )
                                  ],
                                ))
                          ]),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 72.h,
            color: white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20).r,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10).r,
                          child: SizedBox(
                              height: 30.h,
                              width: 30.w,
                              child: Image.asset(
                                "assets/im.png",
                                width: 30.h,
                                height: 30.w,
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                            height: 30.h,
                            width: 30.w,
                            child: Image.asset(
                              "assets/cam.png",
                              width: 30.h,
                              height: 30.w,
                              fit: BoxFit.cover,
                            ))
                      ],
                    ),
                    Apptext(
                        text: "Add hashtag",
                        size: 12.sp,
                        weight: FontWeight.w600,
                        textcolor: saffron)
                  ]),
            ),
          ))
    ]);
  }
}

//Today I am opening a job vacancy in the field of UI/UX Designer at an Apple company. To see a job description, please see below.
