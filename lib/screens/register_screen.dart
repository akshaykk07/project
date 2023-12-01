import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../widgets/button2.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';
import 'login_screen.dart';
class Register_screen extends StatelessWidget {
  const Register_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 29, right: 29).r,
        child: SingleChildScrollView(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80).r,
                  child: Apptext(
                      text: "Create an Account",
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
                  height: 50.h,
                ),
                Align(alignment: Alignment.centerLeft,
                  child: Text("Full name",
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
                    decoration: const InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 12),
                      fillColor: white,
                        filled: true,
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: backcolor)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    backcolor))), //Full name field
                  ),
                ),
                SizedBox(
                  height: 15.h,
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
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 12),
                        fillColor: white,
                        filled: true,
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: backcolor)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: backcolor))),
                  ),
                ),
                 SizedBox(
                  height: 15.h,
                ),
                Align(alignment: Alignment.centerLeft,
                  child: Text("Password",
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
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 12),
                        fillColor: white,
                        filled: true,
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: backcolor)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: backcolor))),
                  ),
                ),
               SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 24,
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: btncolor),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Remember me",
                              style: GoogleFonts.dmSans(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                        InkWell(onTap: (){

                        //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ,));
                        },
                          child: Text(
                            "Forgot Password ?",
                            style: GoogleFonts.dmSans(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        )
                      ]),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 40).r,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login_screen(),
                          ));
                    },
                    child: Button(

                        name: "SIGN UP", btncolor: maincolor, textcolor: white,height: 50.h,width: 500.w),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40).r,
                  child: Button2(
                    name: "SIGN IN WITH GOOGLE",
                    btncolor: btncolor,
                    img: "assets/google.png",
                    textcolor: maincolor,
                  ),
                ),
                 SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Apptext(
                        text: "You don't have an account yet? ",
                        size: 12.sp,
                        weight: FontWeight.w400,
                        textcolor: maincolor),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login_screen(),
                            ));
                      },
                      child: Apptext(
                           text: "Sign In",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: saffron),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
