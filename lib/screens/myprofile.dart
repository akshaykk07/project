import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/settings.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class Myprofile_screen extends StatefulWidget {
  const Myprofile_screen({super.key});

  @override
  State<Myprofile_screen> createState() => _Myprofile_screenState();
}

class _Myprofile_screenState extends State<Myprofile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        iconTheme: IconThemeData(color: white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15).r,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Settings_screen(),
                    ));
              },
              child: Icon(
                Icons.settings,
                color: white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15).r,
            child: Image.asset("assets/kk (2).png"),
          ),
        ],
      ),
      backgroundColor: backcolor,
      body: Column(children: [
        Container(
          height: 175.h,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: 1.0,
                  color: Colors.grey.shade300,
                  blurRadius: 10.10),
            ],
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            color: maincolor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              bottom: 20,
              right: 20,
            ).r,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundColor: maincolor,
                    child: Image.asset("assets/mask.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: Apptext(
                        text: "Orlando Diggs",
                        size: 14.sp,
                        weight: FontWeight.w500,
                        textcolor: white),
                  ),
                  Apptext(
                      text: "California, USA",
                      size: 12.sp,
                      weight: FontWeight.w400,
                      textcolor: white),
                ],
              ),
              Container(
                height: 40.h,
                width: 100.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5).r,
                    color: Colors.white.withOpacity(0.1)),
                child: Center(
                  child: Apptext(
                      text: "Change Image",
                      size: 12.sp,
                      weight: FontWeight.w400,
                      textcolor: white),
                ),
              )
            ]),
          ),
        ),
        Expanded(
            child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10,bottom: 10).r,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildPadding("Fullname"),
                    txtfield("Brandone Louis", false),
                    buildPadding("Date of birth"),
                    txtfield("06 August 1992", true),
                    buildPadding("Gender"),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10).r,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10).r,
                                  color: white),
                              child: Row(
                                children: [
                                  Radio(
                                      value: true,
                                      groupValue: "groupValue",
                                      onChanged: (value) {}),
                                  Apptext(
                                      text: "Male",
                                      size: 12.sp,
                                      weight: FontWeight.w400,
                                      textcolor: maincolor)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10).r,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10).r,
                                  color: white),
                              child: Row(
                                children: [
                                  Radio(
                                      value: true,
                                      groupValue: "groupValue",
                                      onChanged: (value) {}),
                                  Apptext(
                                      text: "Female",
                                      size: 12.sp,
                                      weight: FontWeight.w400,
                                      textcolor: maincolor)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    buildPadding("Email address"),
                    txtfield("Brandonelouis@gmail.com", false),
                    buildPadding("Phone number"),
                    txtfield("+91 | 619 3456 7890", false),
                    buildPadding("Location"),
                    txtfield("California, United states", false),
                    SizedBox(
                      height: 20.h,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Button(
                              name: "SAVE",
                              btncolor: maincolor,
                              textcolor: white,
                              width: 200.w,
                              height: 50.h),
                        ))
                  ]),
            ),
          ),
        )),
      ]),
    );
  }

  Padding txtfield(String hint, bool prifx) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10).r,
      child: SizedBox(
          height: 40.h,
          child: TextFormField(
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: prifx == true
                  ? Icon(
                      Icons.date_range,
                      color: black,
                    )
                  : SizedBox(),
              enabledBorder: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: white)),
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12.sp),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10).r,
              fillColor: white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20).r,
              ),
            ),
          )),
    );
  }

  Padding buildPadding(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10).r,
      child: Apptext(
          text: title,
          size: 12.sp,
          weight: FontWeight.w500,
          textcolor: maincolor),
    );
  }
}
