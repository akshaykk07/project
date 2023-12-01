import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class Addappriciation_screen extends StatelessWidget {
  const Addappriciation_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        elevation: 0,
        iconTheme: const IconThemeData(color: maincolor),

      ),
      body: SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.all(20).r,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15).r,
              child: Apptext(
                  text: "Add Appreciation",
                  size: 16.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,top: 30).r,
              child: Apptext(
                  text: "Award name",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: SizedBox(
                height: 40,
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
                  text: "Category/Achievement achieved",
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
                  text: "End date",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: SizedBox(
                height: 40.h,width: 100.w,
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10).r),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10).r),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
            Padding(
              padding: EdgeInsets.only(top: 50).r,
              child: Padding(
                padding: EdgeInsets.only(right: 40,left: 40).r,
                child: Button(
                    name: "SAVE",
                    btncolor: maincolor,
                    textcolor: white,
                    width: double.infinity.w,
                    height: 50.h),
              ),
            )
          ]),
        ),
      ),
    );
  }


}
