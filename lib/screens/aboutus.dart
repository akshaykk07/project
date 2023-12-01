import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/uplodcv.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class Aboutus_screen extends StatelessWidget {
  const Aboutus_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: ListView(
            children: [

              Apptext(
                  text: "About Company",
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: black),
              SizedBox(
                height: 30.h,
              ),
              Apptext(
                  text:
                  "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
              SizedBox(
                height: 20.h,
              ),
              Apptext(
                  text:
                  "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas .",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
              SizedBox(
                height: 20.h,
              ),
              Apptext(
                  text:
                  "Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain.",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
              const SizedBox(
                height: 30,
              ),
              Apptext(
                  text: "Website",
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: black),
              SizedBox(
                height: 10.h,
              ),
              Apptext(
                  text: "https://www.google.com",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: saffron),
              SizedBox(
                height: 20.h,
              ),
              Apptext(
                  text: "Industry",
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: black),
              SizedBox(
                height: 10.h,
              ),
              Apptext(
                  text: "Internet product",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
              SizedBox(
                height: 20.h,
              ),
              Apptext(
                  text: "Employee Size",
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: black),
              SizedBox(
                height: 10.h,
              ),
              Apptext(
                  text: "132,121 Employees",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
              SizedBox(
                height: 20.h,
              ),
              Apptext(
                  text: "Head office ",
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: black),
              SizedBox(
                height: 10.h,
              ),
              Apptext(
                  text: "Mountain View, California, Amerika Serikat",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
              SizedBox(
                height: 20.h,
              ),
              Apptext(
                  text: "Type ",
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: black),
              SizedBox(
                height: 10.h,
              ),
              Apptext(
                  text: "Multinational company",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
              SizedBox(
                height: 20.h,
              ),
              Apptext(
                  text: "Since",
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: black),
              SizedBox(
                height: 10.h,
              ),
              Apptext(
                  text: "1998",
                  size: 12.h,
                  weight: FontWeight.w400,
                  textcolor: black),
              SizedBox(
                height: 20.h,
              ),
              Apptext(
                  text: "Specialization",
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: black),
              SizedBox(
                height: 10.h,
              ),
              Apptext(
                  text:
                  "Search technology, Web computing, Software and Online advertising",
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
              SizedBox(height: 20.h,),
              Apptext(text: "Company Gallery",
                  size: 14.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [SizedBox(width: 158.w,
                    height: 115,
                    child: Image.asset(
                      "assets/img.png", fit: BoxFit.cover,)), Image
                    .asset("assets/img.png")
                ],),
              Container(
                height: 100.h,
                color: white,
                width: double.infinity,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50.h,
                      width: 50.w,
                      child: const Center(
                        child: Icon(
                          Icons.bookmark_outline_outlined,
                          color: saffron,
                          size: 35,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap:() {

                          Navigator.push(context, MaterialPageRoute(builder: (context) => Cv_screen(),));
                        },
                        child: Button(
                            name: "APPLY NOW",
                            btncolor: maincolor,
                            textcolor: white,
                            height: 50.h,
                            width: 290.w),
                      ),
                    ),
                  ],
                ),
               ),

            ]),
      ),
    );
  }
}









