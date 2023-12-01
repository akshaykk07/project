import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/widgets/text.dart';


import '../constants/colors.dart';
import 'buttons.dart';

class LanguageBox extends StatelessWidget {
  final String title;
  final String img;
  final String s1;
  final String s2;

  const LanguageBox({
    super.key,
    required this.title,
    required this.img,
    required this.s1,
    required this.s2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10).r,
      child: Container(
        height: 150.h,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                spreadRadius: 1.0,
                color: Colors.grey.shade300,
                blurRadius: 10.10),
          ],
          borderRadius: BorderRadius.circular(20).r,
          color: white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10).r,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ListTile(
              leading: Image.asset(img),
              title: Apptext(
                  text: title,
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: black),
              trailing: InkWell(
                  onTap: () {
                    remov(context, title);
                  },
                  child: Image.asset("assets/d.png")),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10).r,
              child: Apptext(
                  text: "Oral : ${s1}",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10).r,
              child: Apptext(
                  text: "Written : ${s2}",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: Colors.grey),
            ),
          ]),
        ),
      ),
    );
  }

  Widget? remov(BuildContext context, String title) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 300.0.h,
            color: Colors.transparent,
            child: Container(
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0).r,
                        topRight: Radius.circular(10.0).r)),
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
                                text: "Remove ${title} ?",
                                size: 16.sp,
                                weight: FontWeight.w700,
                                textcolor: maincolor),
                            Apptext(
                                text:
                                    "Are you sure you want to change ${title} language?",
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
                                  onTap: (){

                                    Navigator.pop(context);
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
                                onTap: (){

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
