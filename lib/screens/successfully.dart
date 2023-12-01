import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';
import 'login_screen.dart';

class Checkemail_screen extends StatelessWidget {
  const Checkemail_screen({super.key});

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
                      text: "Successfully",
                      size: 30.sp,
                      weight: FontWeight.w700,
                      textcolor: logtext),
                ),
                 SizedBox(
                  height: 20.h,
                ),
                Apptext(
                  text:
                      "Your password has been updated, please change your  ",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: smalltext,
                ),
                Apptext(
                    text: "password regularly to avoid this happening",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: smalltext),
               SizedBox(
                  height: 60.h,
                ),
                SizedBox(
                  height: 117.h,
                  width: 139.w,
                  child: Image.asset(
                    "assets/succes.png",
                    fit: BoxFit.cover,
                  ),
                ),
               SizedBox(
                  height: 106.h,
                ),
                 InkWell(
                   onTap: () {
                     Navigator.pushReplacement(
                         context,
                         MaterialPageRoute(
                           builder: (context) => Login_screen(),
                         ));
                   },
                   child: Button(
                      name: "CONTINUE",
                      btncolor: maincolor,
                      textcolor: Colors.white, height: 50.h,width: 400.w,),
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
                      textcolor: white,height: 50.h,width: 400.w,),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ]),
        ),
      ),
    );
  }
}
