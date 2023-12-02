import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/register_screen.dart';

import '../constants/colors.dart';
import '../widgets/button2.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';
import 'forgotpass_screen.dart';


class Login_screen extends StatelessWidget {
   Login_screen({super.key});
 var email=TextEditingController();
 var passwor=TextEditingController();
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
                  padding: const EdgeInsets.only(top: 102).r,
                  child: Apptext(
                      text: "Welcome Back",
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
                    decoration: const InputDecoration(
                      hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 12),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white))),
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
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white)
                        )),
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
                              width: 20.h,
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
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Forgotpass_screen(),
                                ));
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
                  height: 50.h,
                ),
               Padding(
                  padding: EdgeInsets.only(left: 40, right: 40).r,
                  child: InkWell(onTap: (){



                  },
                    child: Button(
                        name: "LOGIN", btncolor: maincolor, textcolor: white,height: 50.h,width: 500.w,),
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
                              builder: (context) => Register_screen(),
                            ));
                      },
                      child: InkWell(onTap: (){

                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Register_screen(),));
                      },
                        child: Apptext(
                            text: "Sign Up",
                            size: 12.sp,
                            weight: FontWeight.w400,
                            textcolor: saffron),
                      ),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
