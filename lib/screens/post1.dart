import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/text.dart';

class Post1_screen extends StatelessWidget {
  const Post1_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.all(10).r,
        child: ListView(children: [
          Container(
            height: 490,
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20,right: 20).r,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: white,
                            radius: 20.r,
                            child: Image.asset(
                              "assets/gm.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Apptext(
                              text: "Google Inc",
                              size: 12.sp,
                              weight: FontWeight.w700,
                              textcolor: maincolor),
                          subtitle: Row(
                            children: [
                              const Icon(
                                Icons.access_time_rounded,
                                size: 15,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Apptext(
                                  text: "21 minuts ago",
                                  size: 10.sp,
                                  weight: FontWeight.w400,
                                  textcolor: maincolor),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10,right: 10).r,
                        child: Apptext(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ",
                            size: 12.sp,
                            weight: FontWeight.w400,
                            textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10).r,
                        child: Row(
                          children: [
                            Apptext(text: "labe ", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                            Apptext(text: "Read more..", size: 12.sp, weight: FontWeight.w400, textcolor: saffron),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 30,right: 30).r,
                        child: Stack(children: [
                          Image.asset("assets/di.png"),
                          Positioned(
                              top: 60.r,
                              left: 60.r,
                              right: 60.r,
                              bottom: 60.r,
                              child: Image.asset("assets/Play.png"))
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10,bottom: 5).r,
                        child: Apptext(
                            text: "What's it like to work at Google?",
                            size: 12.sp,
                            weight: FontWeight.w700,
                            textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10).r,
                        child: Apptext(
                            text: "Youtube.com",
                            size: 10.sp,
                            weight: FontWeight.w400,
                            textcolor: maincolor),
                      )
                    ]),
              )),
              Container(
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
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
          )
        ]),
      ),
    );
  }
}
