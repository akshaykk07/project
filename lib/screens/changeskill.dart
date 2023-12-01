import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/profile.dart';
import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';
import 'editprofile.dart';

class Changeskill2_screen extends StatelessWidget {
  Changeskill2_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        elevation: 0,
        iconTheme: IconThemeData(color: maincolor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20).r,
            child: Apptext(
                text: "Skill(8)",
                size: 16.sp,
                weight: FontWeight.w700,
                textcolor: maincolor),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20).r,
              child: ListView(
                children: [
                  Row(
                    children: [
                      skillbox("Leadership", 110.w),
                      skillbox("Teamwork", 110.w),
                      Expanded(child: skillbox("Vision", 100.w)),
                    ],
                  ),
                  Row(
                    children: [
                      skillbox("Target oriented", 150.w),
                      skillbox("Consistent", 150.w),
                    ],
                  ),
                  Row(
                    children: [
                      skillbox("Good communication skill", 200.w),
                      skillbox("English", 100.w),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180).r,
                    child: skillbox("Responsibility", 100.w),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60, right: 60, top: 280).r,
                    child: InkWell(
                      onTap: (){

                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Editprofile_Screen(),));
                      },
                      child: Button(
                          name: "CHANGE",
                          btncolor: maincolor,
                          textcolor: white,
                          width: double.infinity.w,
                          height: 50.h),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget skillbox(
    String title,
    double width,
  ) {
    return Padding(
      padding: const EdgeInsets.all(5).r,
      child: Container(
        height: 40,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10).r,
            color: Colors.grey.withOpacity(0.2)),
        child: Padding(
          padding: const EdgeInsets.all(8.0).r,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Expanded(
              child: Apptext(
                text: title,
                size: 12.sp,
                weight: FontWeight.w400,
                textcolor: black.withOpacity(0.5),
              ),
            ),
            const Icon(
              Icons.close,
              color: black,
            )
          ]),
        ),
      ),
    );
  }
}
