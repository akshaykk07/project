import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/text.dart';

class Institute_screen extends StatelessWidget {
  const Institute_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backcolor,
        iconTheme: IconThemeData(color: maincolor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20).r,
            child: Apptext(
                text: "Institution name",
                size: 16.sp,
                weight: FontWeight.w700,
                textcolor: maincolor),
          ),
          TextFormField(
            readOnly: true,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: white),
                    borderRadius: BorderRadius.circular(10).r),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: white),
                    borderRadius: BorderRadius.circular(10).r),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10).r),
                suffixIcon: Icon(
                  Icons.close,
                  color: Colors.grey,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                hintText: "University of",
                hintStyle: TextStyle(fontSize: 12.h, color: Colors.grey),
                filled: true,
                fillColor: Colors.white),
          ),
          Expanded(
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.only(top: 30).r,
                child: Apptext(
                    text: "University of Oxford",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "National University of Lesotho International School",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "University of Chester CE Academy",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "University of Chester Academy Northwich",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "University of Birmingham School",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "Bloomsburg University of Pennsylvania",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "California University of Pennsylvania",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "ClarionUniversity of Pennsylvania",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "East Stroundsburg State University of Pennsylvania",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
