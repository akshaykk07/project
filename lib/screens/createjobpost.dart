import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';
import 'addpost.dart';
import 'editaddjob.dart';
import 'notifications.dart';

class Createjobpost_screen extends StatelessWidget {
  const Createjobpost_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: 250.h,
              //230,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 1.0,
                      color: Colors.grey.shade300,
                      blurRadius: 10.10),
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: const Radius
                        .circular(30)
                        .r,
                    bottomRight: const Radius
                        .circular(30)
                        .r),
                color: maincolor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20).r,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 15).r,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Apptext(
                                text: "Hi, Orlando Diggs",
                                size: 14.sp,
                                weight: FontWeight.w500,
                                textcolor: white),
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Notification_screen(),));
                                      },
                                      child: const Icon(
                                        Icons.notifications_none,
                                        color: white,
                                      ),
                                    ),
                                    const Positioned(
                                        left: 12,
                                        top: 3,
                                        child: CircleAvatar(
                                          radius: 5,
                                          backgroundColor: Colors.red,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                CircleAvatar(
                                  radius: 20.r,
                                  backgroundColor: white,
                                  child: Image.asset("assets/mask.png"),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Apptext(
                          text: "Find your dream job \nhere!",
                          size: 20.sp,
                          weight: FontWeight.w700,
                          textcolor: white),
                    ]),
              ),
            ),
            Positioned(
                left: 20.r,
                top: 180.r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        height: 40.h,
                        width: 280.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search",
                              hintStyle: const TextStyle(color: Colors.grey),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15)
                                  .r,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius
                                      .circular(10)
                                      .r),
                              fillColor: white,
                              filled: true),
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius
                                .circular(5)
                                .r,
                            color: saffron),
                        child: Image.asset("assets/f.png"))
                  ],
                )),
          ],
        ),
        Expanded(
            child: SizedBox(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20).r,
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets
                          .only(top: 50.h)
                          .r,
                      child: Apptext(
                          text: "What would you like to add?",
                          size: 16.sp,
                          weight: FontWeight.w700,
                          textcolor: maincolor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10).r,
                      child: Apptext(
                          text: "Would you like to post your tips and experiences",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: maincolor),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Apptext(
                            text: "or create a job?",
                            size: 12.sp,
                            weight: FontWeight.w400,
                            textcolor: maincolor)),
                    Padding(
                      padding: const EdgeInsets
                          .only(top: 20)
                          .r,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Addpost_screen(),
                              ));
                        },
                        child: Button(
                            name: "POST",
                            btncolor: maincolor,
                            textcolor: white,
                            width: 250.w,
                            height: 50.h),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10).r,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Editaddjob_screen(),
                              ));
                        },
                        child: Button(
                            name: "MAKE A JOB",
                            btncolor: btncolor,
                            textcolor: maincolor,
                            width: 250.w,
                            height: 50.h),
                      ),
                    )
                  ]),
                ),
              ),
            )),
      ]),
    );
  }
}
