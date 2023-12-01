import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/sharedjob.dart';

import '../constants/colors.dart';
import '../widgets/text.dart';

class Addpost_screen extends StatelessWidget {
  const Addpost_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Scaffold(
        backgroundColor: backcolor,
       appBar: AppBar(
          backgroundColor: backcolor,
         iconTheme: IconThemeData(color: maincolor),
          actions: [
            InkWell(
              onTap:(){


                Navigator.push(context, MaterialPageRoute(builder: (context) => Sharedjob_screen(),));
              },
              child: Apptext(
                  text: "Post",
                  size: 12.sp,
                  weight: FontWeight.w700,
                  textcolor: saffron),
            ),
            SizedBox(
              width: 20.h,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment:  CrossAxisAlignment.start,
              children: [
            ListTile(
              leading: CircleAvatar(radius: 25.r,child: Image.asset("assets/men.png"),),
              title: Apptext(text: "Orlando Diggs", size: 14.sp, weight: FontWeight.w700, textcolor: maincolor),
              subtitle: Apptext(text: "California, USA", size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.all(20).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10).r,
                  child: Apptext(text: "Post title", size: 12.sp, weight: FontWeight.w600, textcolor: maincolor),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10).r),
                      hintStyle:  TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20).r,
                      hintText: "Write the title of your post here",
                      filled: true,
                      fillColor: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 30).r,
                  child: Apptext(text: "Description", size: 12.sp, weight: FontWeight.w700, textcolor: maincolor),
                ),
                TextFormField(
                  maxLines:10 ,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintStyle:  TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      hintText: "What do you want to talk about?",

                      filled: true,
                      fillColor: white),
                ),
              ],),
            )
          ]),
        ),

      ),
        Align(alignment: Alignment.bottomCenter,
            child: Container(height: 72.h,color: white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20).r,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10).r,
                    child: SizedBox(height:30.h,width:30.w,child: Image.asset("assets/im.png",width: 30.w,height: 30.h,fit: BoxFit.cover,)),
                  ),SizedBox(height:30,width:30,child: Image.asset("assets/cam.png",width: 30.w,height: 30.h,fit: BoxFit.cover,))
                ],),Apptext(text: "Add hashtag", size: 12.sp, weight: FontWeight.w600, textcolor: saffron)
              ]),
            ),))
    ]);
  }
}
