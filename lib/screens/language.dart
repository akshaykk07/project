import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/searchlanguage.dart';


import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/languagebox.dart';
import '../widgets/text.dart';
import 'editprofile.dart';

class Language_screen extends StatelessWidget {
  const Language_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
       iconTheme: IconThemeData(color: maincolor),
        backgroundColor: backcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Apptext(
                  text: "Language",
                  size: 16.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5).r,
                    child: Apptext(
                        text: "Add",
                        size: 14.sp,
                        weight: FontWeight.w700,
                        textcolor: btncolor),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Searchlanguage_Screen() ,));
                    },
                    child: const Icon(
                      Icons.add_circle,
                      color: maincolor,
                    ),
                  )
                ],
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30).r,
              child: ListView(
                children:  [
                  LanguageBox(title: "Indonesian",
                      img: "assets/c (8).png", s1: "Level 10", s2: "Level 10",),
                  LanguageBox(title: "English",
                      img: "assets/c (6).png", s1:"Level 8", s2: "Level 8",),
                   Padding(
                    padding: EdgeInsets.only(left: 80,right: 80,top: 200).r,
                    child: InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Editprofile_Screen(),));
                        },
                        child: Button(name: "Save", btncolor: maincolor, textcolor: white, width: 213.w, height: 50.h)),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
