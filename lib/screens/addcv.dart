import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';


class Addcv_screen extends StatelessWidget {
  const Addcv_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backcolor,
        elevation: 0,
        iconTheme: const IconThemeData(color: maincolor),


        actions:  [
          Icon(
            Icons.more_vert,
            color: black,
          ),
          SizedBox(
            width: 10.w,
          )
        ],

      ),
      body: Stack(children: [
        Column(children: [

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10).r,
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 30).r,
                child: Apptext(
                    text: "Add Resume",
                    size: 16.sp,
                    weight: FontWeight.w600,
                    textcolor: black),
              ),
               SizedBox(
                height: 10.h,
              ),

              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/Resume.png",
                  height: 75.h,
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              Apptext(
                  text: "Upload files in PDF format up to 5 MB. Just upload it once and you can use it in your next application.",
                  size: 10.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
               SizedBox(
                height: 15.h,
              ),

            ]),
          )
        ]),


         Align(alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 50).r,
            child: Button(
                name: "SAVE",
                btncolor: maincolor,
                textcolor: white,
                width: 200.w,height: 50.h),
          ),
        ),
      ]),
    );
  }
}
