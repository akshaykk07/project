import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/widgets/text.dart';

import '../constants/colors.dart';
import 'login_screen.dart';

class Onbord_screen extends StatelessWidget {
  const Onbord_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 51,
            left: 28,
            right: 28,
          ).r,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Jobspot",
                style: GoogleFonts.dmSans(
                    fontSize: 18.sp, color: black, fontWeight: FontWeight.w700),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: SizedBox(
                  height: 310.h,
                  width: 311.w,
                  child: Image.asset(
                    "assets/onpic.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ]),
        ),
        Positioned(
            bottom: 220.r,
            left: 28.r,
            child: Apptext(
                text: "Find Your ",
                size: 40.sp,
                weight: FontWeight.w700,
                textcolor: black)),
        Positioned(
          bottom: 180.r,
          left: 28.r,
          child: Text(
            "Dream Job",
            style: GoogleFonts.dmSans(
                fontSize: 40.sp,
                color: saffron,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                decorationColor: saffron),
          ),
        ),
        Positioned(
            bottom: 140.r,
            left: 28.r,
            child: Apptext(
                text: "Here!",
                size: 40.sp,
                weight: FontWeight.w700,
                textcolor: black)),
        Positioned(
          left: 28.r,
          right: 28.r,
          bottom: 90.r,
          child: SizedBox(
            child: Text(
              "Explore all the most exciting job roles based on your interest and study major.",
              style: GoogleFonts.dmSans(
                  fontSize: 14.sp, color: black, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Positioned(
          right: 28.r,
          bottom: 28.r,
          child: InkWell(
            onTap: () {

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_screen(),));
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: maincolor,
              ),
              child: const Icon(
                Icons.arrow_forward_sharp,
                color: white,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
