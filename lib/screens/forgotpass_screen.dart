import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/checkemail.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';
import 'successfully.dart';
import 'login_screen.dart';


class Forgotpass_screen extends StatelessWidget {
  const Forgotpass_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 29, right: 29).r,
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Apptext(
                      text: "Forgot Pssword?",
                      size: 30.sp,
                      weight: FontWeight.w700,
                      textcolor: logtext),
                ),
               SizedBox(
                  height: 20.h,
                ),
                Apptext(
                  text: "Lorem ipsum dolor sit amet consectetur adipiscing,",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: smalltext,
                ),
                Apptext(
                    text: "elit, sed do eiusmod tempor",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: smalltext),
               SizedBox(
                  height: 60.h,
                ),
                SizedBox(
                  height: 94.h,
                  width: 118.w,
                  child: Image.asset("assets/forgot.png"),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Align(alignment: Alignment.centerLeft,
                  child: Text("Email",
                      style: GoogleFonts.openSans(
                          color: logtext,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                       hintText: "Email",
                      hintStyle: TextStyle(fontSize: 12.sp,color: Colors.grey),
                      fillColor: white,
                      filled: true,
                        border: const OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: backcolor)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: backcolor))),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Checkemail_screen1(),
                        ));
                  },
                  child: Button(
                      name: "RESET PASSWORD",
                      btncolor: maincolor,
                      textcolor: white, height: 50.h,width: 400.w),
                ),
                SizedBox(
                  height: 25.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login_screen(),
                        ));
                  },
                  child:  Button(
                      name: "BACK TO LOGIN",
                      btncolor: btncolor,
                      textcolor: white,height: 50.h,width: 400.w),
                ),
              ]),
        ),
      ),
    );
  }
}
