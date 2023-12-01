import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';
import 'editprofile.dart';

class Changeeducation_screen extends StatelessWidget {
  const Changeeducation_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        iconTheme: IconThemeData(color: maincolor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20).r,
              child: Apptext(
                  text: "Change Education",
                  size: 16.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: Apptext(
                  text: "Level of education",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: SizedBox(
                height: 40.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Bachelor of Information Technology",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10).r),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10).r),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      fillColor: white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).r)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: Apptext(
                  text: "Institution name",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: SizedBox(
                height: 40.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "University of Oxford",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10).r),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10).r),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      fillColor: white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).r)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: Apptext(
                  text: "Field of study",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: SizedBox(
                height: 40.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Information Technology",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10).r),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10).r),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      fillColor: white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).r)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10).r,
                      child: Apptext(
                          text: "Start date",
                          size: 12.sp,
                          weight: FontWeight.w700,
                          textcolor: maincolor),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10).r,
                      child: Container(
                        height: 40.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).r,
                          color: white,
                        ),
                        child: Center(
                            child: Apptext(
                                textcolor: Colors.grey,
                                weight: FontWeight.w400,
                                size: 12.sp,
                                text: "Sep 2010")),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Apptext(
                            text: "End date",
                            size: 12.sp,
                            weight: FontWeight.w700,
                            textcolor: maincolor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10).r,
                        child: Container(
                          height: 40.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10).r,
                            color: white,
                          ),
                          child: Center(
                              child: Apptext(
                                  textcolor: Colors.grey,
                                  weight: FontWeight.w400,
                                  size: 12.sp,
                                  text: "Aug 2013")),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    height: 24.h,
                    width: 24.w,
                    child: Icon(
                      Icons.check,
                      color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5).r,
                      color: white,
                    )),
                Padding(
                  padding: const EdgeInsets.all(10).r,
                  child: Apptext(
                      text: "This is my position now",
                      size: 12.sp,
                      weight: FontWeight.w400,
                      textcolor: maincolor),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: Apptext(
                  text: "Description",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: SizedBox(
                height: 150.h,
                child: TextFormField(
                  maxLines: 150,
                  decoration: InputDecoration(
                      hintText: "Write additional information here",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12.sp),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10).r),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: white),
                          borderRadius: BorderRadius.circular(10).r),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      fillColor: white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15).r)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20).r,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10).r,
                      child: InkWell(
                        onTap: () {
                          remov(context);
                        },
                        child: Button(
                            name: "REMOVE",
                            btncolor: btncolor,
                            textcolor: white,
                            width: 0.w,
                            height: 50.h),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10).r,
                      child: InkWell(
                        onTap: () {
                          save(context);
                        },
                        child: Button(
                            name: "SAVE",
                            btncolor: maincolor,
                            textcolor: white,
                            width: 0.w,
                            height: 50.h),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  void save(BuildContext context) {
    showModalBottomSheet(
        shape: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),),borderSide: BorderSide(color: white)),
        context: context,
        builder: (builder) {
          return Container(
            height: 300.0.h,
            color: Colors.transparent,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0).r,
                        topRight: Radius.circular(20.0).r)),
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 5.h,
                          width: 30.w,
                          color: maincolor,
                        ),
                        Column(
                          children: [
                            Apptext(
                                text: "Undo Changes ?",
                                size: 16.sp,
                                weight: FontWeight.w700,
                                textcolor: maincolor),
                            Apptext(
                                text:
                                    "Are you sure you want to change what you entered?",
                                size: 12.sp,
                                weight: FontWeight.w400,
                                textcolor: maincolor),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20).r,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10).r,
                                child: InkWell(
                                  onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Editprofile_Screen()));},
                                  child: Button(
                                      name: "CONTINUE FILLING",
                                      btncolor: maincolor,
                                      textcolor: white,
                                      width: double.infinity.w,
                                      height: 50.h),
                                ),
                              ),
                              InkWell(
                                onTap: (){Navigator.pop(context);},
                                child: Button(
                                    name: "UNDO CHANGES",
                                    btncolor: btncolor,
                                    textcolor: maincolor,
                                    width: double.infinity.w,
                                    height: 50.h),
                              )
                            ],
                          ),
                        )
                      ]),
                )),
          );
        });
  }

  void remov(BuildContext context) {
    showModalBottomSheet(
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            borderSide: BorderSide(color: white)),
        context: context,
        builder: (builder) {
          return Container(
            height: 300.0.h,
            color: Colors.transparent,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0).r,
                        topRight: Radius.circular(20.0).r)),
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 5.h,
                          width: 30.w,
                          color: maincolor,
                        ),
                        Column(
                          children: [
                            Apptext(
                                text: "Remove Education ?",
                                size: 16.sp,
                                weight: FontWeight.w700,
                                textcolor: maincolor),
                            Apptext(
                                text:
                                    "Are you sure you want to change what you entered?",
                                size: 12.sp,
                                weight: FontWeight.w400,
                                textcolor: maincolor),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20).r,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10).r,
                                child: InkWell(
                                  onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Editprofile_Screen()));},
                                  child: Button(
                                      name: "CONTINUE FILLING",
                                      btncolor: maincolor,
                                      textcolor: white,
                                      width: double.infinity.w,
                                      height: 50.h),
                                ),
                              ),
                              InkWell(
                                  onTap: (){Navigator.pop(context);},
                                child: Button(
                                    name: "UNDO CHANGES",
                                    btncolor: btncolor,
                                    textcolor: maincolor,
                                    width: double.infinity.w,
                                    height: 50.h),
                              )
                            ],
                          ),
                        )
                      ]),
                )),
          );
        });
  }
}
