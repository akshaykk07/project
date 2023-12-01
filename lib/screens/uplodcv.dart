import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../home.dart';
import '../widgets/buttons.dart';
import '../widgets/circle.dart';
import '../widgets/text.dart';

class Cv_screen extends StatelessWidget {
  const Cv_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: maincolor),
        actions: const [
          Icon(
            Icons.more_vert,
            color: black,
          ),
          SizedBox(
            width: 10,
          )
        ],
        backgroundColor: white,
      ),
      body: Stack(children: [
        Column(children: [
          SizedBox(
            height: 80.h,
          ),
          Container(
            height: 114.h,
            width: double.infinity.w,
            color: Colors.grey[200],
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 10.h,
              ),
              Apptext(
                  text: "UI/UX Designer",
                  size: 16.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Apptext(
                      text: "Google",
                      size: 16.sp,
                      weight: FontWeight.w400,
                      textcolor: maincolor),
                  Circle(theam: maincolor, radius: 5.r),
                  Apptext(
                      text: "California",
                      size: 16.sp,
                      weight: FontWeight.w400,
                      textcolor: maincolor),
                  Circle(theam: maincolor, radius: 5),
                  Apptext(
                      text: "1 day ago",
                      size: 16.sp,
                      weight: FontWeight.w400,
                      textcolor: maincolor),
                ],
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10).r,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 15.h,
              ),
              Apptext(
                  text: "Upload CV",
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: black),
              SizedBox(
                height: 10.h,
              ),
              Apptext(
                  text: "Add your CV/Resume to apply for a job",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
              SizedBox(
                height: 30.h,
              ),
              Image.asset(
                "assets/Resume.png",
                height: 75.h,
              ),
              SizedBox(
                height: 15.h,
              ),
              Apptext(
                  text: " Information",
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: black),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 200.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 40.40,
                          spreadRadius: 0.0,
                          color: Colors.grey.shade300)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Apptext(
                      text:
                          "Explain why you are the right person for \nthis job",
                      size: 12,
                      weight: FontWeight.w400,
                      textcolor: Colors.grey.shade500),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ]),
          ),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home(),));

            },
            child: Button(
                name: "APPLY NOW",
                btncolor: maincolor,
                textcolor: white,
                height: 50.h,
                width: 300.w),
          ),
        ]),
        Positioned(
            top: 15.r,
            left: 150.r,
            right: 150.r,
            child: CircleAvatar(
              radius: 42.r,
              backgroundColor: const Color(0xffAFECFE),
              child: Image.asset(
                "assets/g.png",
                height: 54.h,
                width: 54.w,
              ),
            )),
      ]),
    );
  }
}
