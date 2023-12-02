import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/text.dart';

class Levelofeducation_Screen extends StatelessWidget {
  const Levelofeducation_Screen({super.key});

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
                text: "Level of Education",
                size: 16.sp,
                weight: FontWeight.w700,
                textcolor: maincolor),
          ),
          TextFormField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: white),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: white),
                    borderRadius: BorderRadius.circular(10)),
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
                contentPadding: const EdgeInsets.symmetric(vertical: 10).r,
                hintText: "Bachelor",
                hintStyle: TextStyle(fontSize: 12.sp, color: Colors.grey),
                filled: true,
                fillColor: Colors.white),
          ),
          Expanded(
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.only(top: 30).r,
                child: Apptext(
                    text:
                        "Bachelor of Electronic Engineering (Indrustrial Electronics)",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "Bachelor of Information Technology",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: " Economics (Bachelor of Science), Psycology",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text:
                        "Bachelor of Arts (Hons) Mass Communication With Public Relations",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "Bachelor of Science in Computer Science",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "Bachelors of Science in Marketing",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text:
                        "Bachelor of Engineering With A Major in Engineering Product Development (Robotic Track)",
                    size: 12,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "Bachelor of Busines (Economics/Finance)",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "Bachelors of Science in Marketing",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "Bachelors of Business Adminisitration",
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
