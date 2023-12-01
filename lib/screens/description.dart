import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/uplodcv.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/circle.dart';
import '../widgets/text.dart';

class Description_screen extends StatelessWidget {
  const Description_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,top: 10).r,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 15.h,),
                  Apptext(
                      text: "Job Description",
                      size: 14.sp,
                      weight: FontWeight.w700,
                      textcolor: black),
                  SizedBox(
                    height: 20.h,
                  ),
                  Apptext(
                      text:
                      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem ...",
                      size: 12.sp,
                      weight: FontWeight.w400,
                      textcolor: black),
                  SizedBox(
                    height: 20.h,
                  ),
                  Button(name: "Read More", btncolor: btncolor, textcolor: maincolor, width: 150.w,height: 50.h),
                  SizedBox(height: 20.h,),
                  Apptext(
                      text: "Requirements",
                      size: 14.sp,
                      weight: FontWeight.w700,
                      textcolor: black),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      children:[
                        Circle(theam: maincolor, radius: 3),
                        SizedBox(width: 10.h),
                        Apptext(
                            text: "Sed ut perspiciatis unde omnis iste natus error sit.",
                            size: 12.sp,
                            weight: FontWeight.w400,
                            textcolor: black),
                      ]  ),
                  SizedBox(
                    height: 15.h,
                  ),

                  Row(
                    children: [
                      Circle(theam: maincolor, radius: 3),
                      SizedBox(width: 10.h,),
                      Apptext(
                          text: "Neque porro quisquam est, qui dolorem ipsum quia \nolor sit amet, consectetur & adipisci velit.",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: black),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Circle(theam: maincolor, radius: 3),
                      SizedBox(width: 10.w,),
                      Apptext(
                          text: "Nemo enim ipsam voluptatem quia voluptas sit \naspernatur aut odit aut fugit.",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: black),
                    ],
                  ),

                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Circle(theam: maincolor, radius: 3),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: Apptext(
                            text: "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea \ncommodi consequatur",
                            size: 12.sp,
                            weight: FontWeight.w400,
                            textcolor: black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Circle(theam: maincolor, radius: 3),
                      SizedBox(width: 10.w,),
                      Apptext(
                          text: "Mountain View, California, Amerika Serikat",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: black),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Apptext(
                      text: "Location ",
                      size: 14.sp,
                      weight: FontWeight.w700,
                      textcolor: black),
                  SizedBox(
                    height: 20.h,
                  ),
                  Apptext(
                      text: "Overlook Avenue, Belleville, NJ, USA",
                      size: 12.sp,
                      weight: FontWeight.w400,
                      textcolor: black),
                  SizedBox(
                    height: 20.h,
                  ),

                  Stack(children:[ Image.asset("assets/Map.png"),
                    Positioned(top:50.r,
                        left:150.r,
                        right:150.r,
                        child: Image.asset("assets/loc.png"))]),
                  SizedBox(
                    height: 15.h,
                  ),
                  Apptext(
                      text: "Informations ",
                      size: 14.sp,
                      weight: FontWeight.w700,
                      textcolor: black),
                  SizedBox(
                    height: 10.h,
                  ),


                  Apptext(
                      text: "Position",
                      size: 12.sp,
                      weight: FontWeight.w700,
                      textcolor: black),
                  SizedBox(
                    height: 10.h,
                  ),
                  Apptext(
                      text: "Senior Designer",
                      size: 12.sp,
                      weight: FontWeight.w400,
                      textcolor: black),
                  SizedBox(height: 10.h,),
                  Divider(thickness: 2,color: Colors.grey[300],),
                  SizedBox(
                    height: 10.h,
                  ),
                  Apptext(
                      text: "Experience",
                      size: 12.sp,
                      weight: FontWeight.w700,
                      textcolor: black),
                  Apptext(
                      text: "3 Years",
                      size: 12.sp,
                      weight: FontWeight.w400,
                      textcolor: black),
                  SizedBox(height: 10.h,),
                  Divider(thickness: 2,color: Colors.grey[300],),
                  SizedBox(
                    height: 10.h,
                  ),
                  Apptext(
                      text: "Job Type",
                      size: 12.sp,
                      weight: FontWeight.w700,
                      textcolor: black),
                  Apptext(
                      text: "Full-Time",
                      size: 12.sp,
                      weight: FontWeight.w400,
                      textcolor: black),
                  SizedBox(height: 10.h,),
                  Divider(thickness: 2,color: Colors.grey[300],),
                  SizedBox(
                    height: 10.h,
                  ),
                  Apptext(
                      text: "Specialization",
                      size: 12.sp,
                      weight: FontWeight.w700,
                      textcolor: black),
                  Apptext(
                      text: "Design",
                      size: 12.sp,
                      weight: FontWeight.w400,
                      textcolor: black),
                  SizedBox(height: 10.h,),
                  Divider(thickness: 2,color: Colors.grey[300],),
                  SizedBox(height: 20.h),
                  Apptext(
                      text: "Facilities and Others ",
                      size: 14.sp,
                      weight: FontWeight.w700,
                      textcolor: black),
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      Circle(theam: maincolor, radius: 3),
                      SizedBox(width: 10.w,),
                      Apptext(
                          text: "Medical",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: black),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      Circle(theam: maincolor, radius: 3),
                      SizedBox(width: 10.w,),
                      Apptext(
                          text: "Dental",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: black),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      Circle(theam: maincolor, radius: 3),
                      SizedBox(width: 10.w,),
                      Apptext(
                          text: "Technical Cartification",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: black),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      Circle(theam: maincolor, radius: 3),
                      SizedBox(width: 10.w,),
                      Apptext(
                          text: "Meal Allowance",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: black),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      Circle(theam: maincolor, radius: 3),
                      SizedBox(width: 10.w,),
                      Apptext(
                          text: "Transport Allowance",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: black),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      Circle(theam: maincolor, radius: 3),
                      SizedBox(width: 10.w,),
                      Apptext(
                          text: "Regular Hours",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: black),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      Circle(theam: maincolor, radius: 3),
                      SizedBox(width: 10.w,),
                      Apptext(
                          text: "Mondays-Fridays",
                          size: 12.sp,
                          weight: FontWeight.w400,
                          textcolor: black),
                    ],
                  ),
                  SizedBox(height: 30.h,)
                  ,Align(alignment:Alignment.center,child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Cv_screen(),));
                      },
                      child: Button(name: "APPLY NOW", btncolor: maincolor, textcolor: white, width: 300.w,height: 50.h,))),
                  SizedBox(height: 20.h,)

                ]),
          ),
        ],
      ),
    );
  }
}
