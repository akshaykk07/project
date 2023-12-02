import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/jobdescrip.dart';
import 'package:project/screens/profile.dart';
import 'package:project/screens/search.dart';
import 'package:project/widgets/jobtile.dart';
import 'package:project/widgets/text.dart';

import 'constants/colors.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  @override


  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 22, right: 22, top: 63).r,
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Apptext(
                text: "Hello \nOrlando Diggs.",
                size: 22.sp,
                weight: FontWeight.w700,
                textcolor: maincolor),
            SizedBox(
              height: 20.h,
            ),
            Stack(
              children: [
                Container(
                  height: 143,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: maincolor,
                    borderRadius: BorderRadius.circular(10).r,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17, top: 20).r,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Apptext(
                              text: "50% off\ntake any courses",
                              size: 18.sp,
                              weight: FontWeight.w500,
                              textcolor: white),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 26.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: saffron,
                                borderRadius: BorderRadius.circular(10).w),
                            child: Center(
                                child: Apptext(
                                    textcolor: white,
                                    text: "Join Now",
                                    size: 13.sp,
                                    weight: FontWeight.w500)),
                          )
                        ]),
                  ),
                ),
                Positioned(

                  left: 160.r,
                    top: 1.r,
                    //bottom: .5.r,
                    child: SizedBox(
                      height: 195.h,
                      width: 216.w,
                      child: Image.asset("assets/girl.png"),
                    )),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView(children:  [
                Apptext(
                    text: "Find Your Job",
                    size: 16.sp,
                    weight: FontWeight.w700,
                    textcolor: Colors.black),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 150.h,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10).r,
                          child: InkWell(
                            onTap: (){

                              Navigator.push(context, MaterialPageRoute(builder: (context) => Search_screen(),));
                            },
                            child: Container(
                              height: 150.h,
                              width: 170.w,
                              decoration: BoxDecoration(
                                color: Color(0xffAFECFE),
                                borderRadius: BorderRadius.circular(10).w,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/search.png",
                                      height: 34.h,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Apptext(
                                        text: "44.5k",
                                        size: 16.sp,
                                        weight: FontWeight.w700,
                                        textcolor: Colors.black),
                                    Apptext(
                                        text: "Remote Job",
                                        size: 14.sp,
                                        weight: FontWeight.w400,
                                        textcolor: Colors.black)
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10).r,
                          child: SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 65.h,
                                  width: double.infinity.w,
                                  decoration: BoxDecoration(
                                      color: btncolor,
                                      borderRadius: BorderRadius.circular(10).w),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Apptext(
                                            text: "66.8k",
                                            size: 16.sp,
                                            weight: FontWeight.w700,
                                            textcolor: Colors.black),
                                        Apptext(
                                            text: "Full Time",
                                            size: 14.sp,
                                            weight: FontWeight.w400,
                                            textcolor: Colors.black)
                                      ]),
                                ),
                                Container(
                                  height: 65.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFD6AD),
                                      borderRadius: BorderRadius.circular(10).w),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Apptext(
                                            text: "38.9k",
                                            size: 16.sp,
                                            weight: FontWeight.w700,
                                            textcolor: Colors.black),
                                        Apptext(
                                            text: "Part Time",
                                            size: 14.sp,
                                            weight: FontWeight.w400,
                                            textcolor: Colors.black)
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Apptext(
                    text: "Resend Job List",
                    size: 16.sp,
                    weight: FontWeight.w700,
                    textcolor: Colors.black),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Jobdescrip_screen(),));
                    },
                    child: const Jobtile(img: "assets/goo (1).png", title: "UI/UX Designer", stitle: "Google Inc")),
                const Jobtile(img: "assets/goo (3).png", title: "Product Designer", stitle: "Apple Inc")
              ],),
            )
          ]),
        ),

        Positioned(
            top: 60.r,right: 40.r,
            child: InkWell(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile_screen(),));
                },
                child: CircleAvatar(radius: 20.r,backgroundColor: white,child: Image.asset("assets/men.png"),))),

      ]),



    );
  }
}
