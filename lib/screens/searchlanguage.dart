import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/text.dart';
import 'addlanguage.dart';

class Searchlanguage_Screen extends StatelessWidget {
  const Searchlanguage_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        elevation: 0,
        iconTheme:  IconThemeData(color: maincolor),

      ),
body: Padding(
  padding: const EdgeInsets.all(20).r,
  child:   Column( children: [

    SizedBox(height: 40.h,
      child: TextFormField(

        decoration: InputDecoration(

            enabledBorder: InputBorder.none,

            focusedBorder: InputBorder.none,

            border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(10).r),

            prefixIcon: const Icon(

              Icons.search,

              color: Colors.grey,

            ),

            contentPadding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 13.h),

            hintText: "Search language",

            hintStyle: TextStyle(color: Colors.grey,fontSize: 12.sp),

            filled: true,

            fillColor: Colors.white),

      ),
    ),
Expanded(
  child: Padding(
    padding:  EdgeInsets.only(top: 20).r,
    child: ListView(children: [

      buildListTile("Arabic", "assets/c (9).png",false),
      buildListTile("Indonesian", "assets/c (8).png",false),
      buildListTile("Malaysian", "assets/c (7).png",false),


      InkWell(
          onTap: (){

          Navigator.push(context, MaterialPageRoute(builder: (context) => Addlanguage(),));

          },
          child: buildListTile("English", "assets/c (6).png",true)),
      buildListTile("French", "assets/c (3).png",false),
      buildListTile("German", "assets/c (5).png",false),

      buildListTile("Hindi", "assets/c (4).png",false),
      buildListTile("Italian", "assets/c (3).png",false),
      buildListTile("Japanese", "assets/c (2).png",false),
      ],),
  ),
)
  ]),
),
    );
  }

  Widget buildListTile(String title,String img,bool click) => Padding(
    padding: const EdgeInsets.only(top: 10).r,
    child: ListTile(
      leading: CircleAvatar(child: Image.asset(img,fit: BoxFit.cover),radius: 15.r,backgroundColor: white,),
      title: Apptext(text: title, size: 12.sp,
          weight: FontWeight.w400,
          textcolor:click==true?white: maincolor),
      tileColor:click==true? btncolor:white,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10).r,
          borderSide: BorderSide(color: white)),),
  );
}
