import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';
import 'editprofile.dart';

class Editappriciation_screen extends StatelessWidget {
  const Editappriciation_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: maincolor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15).r,
              child: Apptext(
                  text: "Edit Appreciation",
                  size: 16.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 30).r,
              child: Apptext(
                  text: "Award name",
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
                      hintText: "Wireless Symposium (RWS)",
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
                  text: "Category/Achievement achieved",
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
                      hintText: "Young Scientist",
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
                  text: "End date",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10).r,
              child: SizedBox(
                height: 40.h,
                width: 100.w,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "2014",
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
              padding: const EdgeInsets.only(bottom: 10).r,
              child: Apptext(
                  text: "Description",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
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
              padding: const EdgeInsets.only(top: 50).r,
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
                      padding: const EdgeInsets.only(left: 10).r,
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
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20).r,
                topRight: Radius.circular(20).r),
            borderSide: BorderSide(color: Colors.white)),
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
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Editprofile_Screen(),
                                        ));
                                  },
                                  child: Button(
                                      name: "CONTINUE FILLING",
                                      btncolor: maincolor,
                                      textcolor: white,
                                      width: double.infinity.w,
                                      height: 50.h),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
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
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r)),
            borderSide: BorderSide(color: Colors.white)),
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
                                text: "Remove Appreciation ?",
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
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Editprofile_Screen(),
                                        ));
                                  },
                                  child: Button(
                                      name: "CONTINUE FILLING",
                                      btncolor: maincolor,
                                      textcolor: white,
                                      width: double.infinity.w,
                                      height: 50.h),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
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
