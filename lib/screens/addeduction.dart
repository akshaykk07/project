import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class Addeducation_screen extends StatelessWidget {
  const Addeducation_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        elevation: 0,
        iconTheme: const IconThemeData(color: maincolor),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15).r,
              child: Apptext(
                  text: "Add Education",
                  size: 16.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: Apptext(
                  text: "Level of education",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10).r,
                  child: SizedBox(
                    height: 40.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: white),
                              borderRadius: BorderRadius.circular(10).r),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: white),
                              borderRadius: BorderRadius.circular(10).r),
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                          fillColor: white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15).r)),
                    ),
                  ),
                ),

            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: Apptext(
                  text: "Institution name",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10).r,
                  child: SizedBox(
                    height: 40.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: white),
                              borderRadius: BorderRadius.circular(10).r),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: white),
                              borderRadius: BorderRadius.circular(10).r),
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                          fillColor: white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15).r)),
                    ),
                  ),
                ),

            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Apptext(
                  text: "Field of study",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: SizedBox(
                height: 40.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10).r),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10).r),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                      fillColor: white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).r)),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10).r,
                      child: Apptext(
                          text: "Start date",
                          size: 12.sp,
                          weight: FontWeight.w700,
                          textcolor: maincolor),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 10).r,
                     child: Container(height: 40.h,width: 100.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10).r,color: white,),),
                   ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10).r,
                        child: Apptext(
                            text: "End date",
                            size: 12.sp,
                            weight: FontWeight.w700,
                            textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10).r,
                        child: Container(height: 40.h,width: 100.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10).r,color: white,),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5).r,
                      color: white,
                    )),
                Padding(
                  padding: const EdgeInsets.all(10).r,
                  child: Apptext(
                      text: "This is my position now",
                      size: 12.sp,
                      weight: FontWeight.w400,
                      textcolor: maincolor),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: Apptext(
                  text: "Description",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10).r,
                  child: SizedBox(
                    height: 150.h,
                    child: TextFormField(maxLines: 150,
                      decoration: InputDecoration(
                        hintText: "Write additional information here",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 12.sp),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: white),
                              borderRadius: BorderRadius.circular(10).r),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: white),
                              borderRadius: BorderRadius.circular(10).r),
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                          fillColor: white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15).r)),
                    ),
                  ),
                ),
           Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 10).r,
                  child: Button(
                      name: "SAVE",
                      btncolor: maincolor,
                      textcolor: white,
                      width: 250.w,
                      height: 50.h),
                ))
          ]),
        ),
      ),
    );
  }
}
