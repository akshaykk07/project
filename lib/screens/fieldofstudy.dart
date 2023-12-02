import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/text.dart';

class Fieldofstudy_screen extends StatelessWidget {
  const Fieldofstudy_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backcolor,
        iconTheme: IconThemeData(color: maincolor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20).r,
                child: Apptext(text: "Field of study", size: 16.sp, weight: FontWeight.w700, textcolor: maincolor),
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10).r),
                    suffixIcon: Icon(Icons.close,color: Colors.grey,),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    contentPadding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                    hintText: "Information",
                    hintStyle: TextStyle(fontSize: 12.h,color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white),
              ),
              Expanded(
                child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30).r,
                        child: Apptext(text: "Information Technology", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15).r,
                        child: Apptext(text: "Business Information Systems", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15).r,
                        child: Apptext(text: "Computer Information Science", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15).r,
                        child: Apptext(text: "Computer Information Systems", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15).r,
                        child: Apptext(text: "Healt Information Management", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15).r,
                        child: Apptext(text: "History and Information", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15).r,
                        child: Apptext(text: "Information Assurance", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15).r,
                        child: Apptext(text: "Information Security", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15).r,
                        child: Apptext(text: "BInformation Systems", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15).r,
                        child: Apptext(text: "Information Systems Major", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                      ),
                    ]),
              ),

            ]),
      ),
    );
  }
}
