import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../constants/colors.dart';
import '../widgets/text.dart';

class Jobposition_Screen extends StatelessWidget {
  const Jobposition_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
       iconTheme: IconThemeData(color: maincolor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20).r,
            child: Apptext(text: "Job Position", size: 16.sp, weight: FontWeight.w700, textcolor: maincolor),
          ),
          TextFormField(
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
                contentPadding: EdgeInsets.symmetric(vertical: 10.sp),
                hintText: "Search",
                hintStyle: TextStyle(fontSize: 12.sp,color: Colors.grey),
                filled: true,
                fillColor: Colors.white),
          ),
              Expanded(
                child: ListView(

                    children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: Apptext(text: "Assistant", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: Apptext(text: "Associate", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: Apptext(text: "Administrative Assistant", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: Apptext(text: "Account Manager", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: Apptext(text: "Assistant Manager", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: Apptext(text: "Commission Sales Associate", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: Apptext(text: "sales Attendant", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: Apptext(text: "Accountant", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: Apptext(text: "Sales Advocate", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: Apptext(text: "Analyst", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                  ),
                ]),
              ),

        ]),
      ),
    );
  }
}
