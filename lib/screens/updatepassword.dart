import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class Updatepassword_screen extends StatelessWidget {
  const Updatepassword_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: maincolor),
        backgroundColor: backcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20).r,
              child: Apptext(
                  text: "Update Password",
                  size: 16.sp,
                  weight: FontWeight.w500,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: Apptext(
                  text: "Old Password",
                  size: 12.sp,
                  weight: FontWeight.w500,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: buildSizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: Apptext(
                  text: "New Password",
                  size: 12.sp,
                  weight: FontWeight.w500,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: buildSizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).h,
              child: Apptext(
                  text: "Confirm Password",
                  size: 12.sp,
                  weight: FontWeight.w500,
                  textcolor: maincolor),
            ),
            buildSizedBox(),
             Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 150).r,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Button(
                        name: "Update",
                        btncolor: maincolor,
                        textcolor: white,
                        width: 250.w,
                        height: 50.h),
                  ),
                ))
          ]),
        ),
      ),
    );
  }

  SizedBox buildSizedBox() {
    return SizedBox(
      height: 40.h,
      child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.visibility_off,
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10).r,
                borderSide: BorderSide(color: white)),
            fillColor: white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10).r,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h)),
      ),
    );
  }
}
