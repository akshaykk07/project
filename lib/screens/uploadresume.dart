import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';
import 'editprofile.dart';


class Uploadresume_screen extends StatelessWidget {
  const Uploadresume_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: maincolor),
        actions: [
          Icon(
            Icons.more_vert,
            color: black,
          ),
          SizedBox(
            width: 10.w,
          )
        ],
        backgroundColor: white,
      ),
      body: Stack(children: [
        Column(children: [

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10).r,
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 30).r,
                child: Apptext(
                    text: "Add Resume",
                    size: 16.sp,
                    weight: FontWeight.w600,
                    textcolor: black),
              ),
              SizedBox(
                height: 10.h,
              ),

              SizedBox(height: 118.h,width: double.infinity.w,
                child: Image.asset(
                  "assets/err.png",fit: BoxFit.cover,
                  height: 75.h,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Apptext(
                  text: "Upload files in PDF format up to 5 MB. Just upload it once and you can use it in your next application.",
                  size: 10.sp,
                  weight: FontWeight.w400,
                  textcolor: black),
              SizedBox(
                height: 15.h,
              ),

            ]),
          )
        ]),


        Align(alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 80).r,
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Editprofile_Screen(),));
              },
              child: Button(
                  name: "SAVE",
                  btncolor: maincolor,
                  textcolor: white,
                  height: 50.h,
                  width: 200.w),
            ),
          ),
        ),
      ]),
    );
  }
}
