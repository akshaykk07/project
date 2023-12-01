import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/successfully.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';
import 'login_screen.dart';

class Checkemail_screen1 extends StatelessWidget {
  const Checkemail_screen1({super.key});

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
                  padding: const EdgeInsets.only(top: 80).r,
                  child: Apptext(
                      text: "Check Your Email",
                      size: 30.sp,
                      weight: FontWeight.w700,
                      textcolor: logtext),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Apptext(
                  text:
                  "We have sent the reset password to the email address",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: smalltext,
                ),
                Apptext(
                    text: " brandonelouis@gmial.com",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: smalltext),
                SizedBox(
                  height: 60.h,
                ),
                SizedBox(
                  height: 125,
                  width: 139,
                  child: Image.asset(
                    "assets/email.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 106.h,
                ),
                InkWell(onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Checkemail_screen(),));
                },
                  child: Button(
                    name: "OPEN YOUR EMAIL",
                    btncolor: maincolor,
                    textcolor: Colors.white, height: 50.h,width: 400.w,),
                ),
                SizedBox(
                  height: 15.h,
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
                    textcolor: white,height: 50.h,width: 400.w,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Apptext(text: "You have not received the email?", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                      Apptext(text: " Resend", size: 12, weight: FontWeight.w400, textcolor: saffron)
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
