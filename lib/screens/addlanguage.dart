import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/profile.dart';
import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class Addlanguage extends StatelessWidget {
  Addlanguage({super.key});

  @override
  var genr;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: maincolor),
        backgroundColor: backcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20).r,
            child: Apptext(
                text: "Language",
                size: 16.sp,
                weight: FontWeight.w700,
                textcolor: maincolor),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20).r,
            child: Container(
              height: 145.h,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Apptext(
                              text: "Language",
                              size: 12.sp,
                              weight: FontWeight.w700,
                              textcolor: maincolor),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10).r,
                                child: Image.asset("assets/c (6).png"),
                              ),
                              Apptext(
                                  text: "English",
                                  size: 12.sp,
                                  weight: FontWeight.w400,
                                  textcolor: maincolor),
                            ],
                          )
                        ]),
                    Divider(
                      thickness: 1,
                      color: Colors.grey[300],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Apptext(
                            text: "First language",
                            size: 12.sp,
                            weight: FontWeight.w700,
                            textcolor: maincolor),
                        Radio(
                          value: true,
                          groupValue: genr,
                          onChanged: (value) {},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 200.h,
            width: double.infinity.w,
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
              child: Padding(
                padding: const EdgeInsets.all(10).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Apptext(
                        text: "Oral",
                        size: 12.sp,
                        weight: FontWeight.w700,
                        textcolor: maincolor),
                    InkWell(
                        onTap: () {
                          oral(context);
                        },
                        child: Apptext(
                            text: "level 10",
                            size: 12.sp,
                            weight: FontWeight.w400,
                            textcolor: Colors.grey)),
                    Divider(
                      thickness: 1,
                      color: Colors.grey[300],
                    ),
                    Apptext(
                        text: "Written",
                        size: 12.sp,
                        weight: FontWeight.w700,
                        textcolor: maincolor),
                    Apptext(
                        text: "Choose your speaking skill level",
                        size: 12.sp,
                        weight: FontWeight.w400,
                        textcolor: Colors.grey),
                  ],
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 20).r,
                child: Apptext(
                    text: "Proficiency level : 0 - Poor, 10 - Very good",
                    size: 12.sp,
                    weight: FontWeight.w400,
                    textcolor: Colors.grey),
              )),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 100).r,
                child: InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profile_screen(),));
                  },
                  child: Button(
                      name: "SAVE",
                      btncolor: maincolor,
                      textcolor: white,
                      width: 250.w,
                      height: 50.h),
                ),
              ))
        ]),
      ),
    );
  }

  void oral(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20).r,
              borderSide: BorderSide(color: white)),
          child: Container(
            height: 666.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20).r,
              color: white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20).r,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 5.h,
                      width: 40.w,
                      color: Colors.grey,
                    ),
                    row("Level 0"),
                    row("Level 1"),
                    row("Level 2"),
                    row("Level 3"),
                    row("Level 4"),
                    row("Level 5"),
                    row("Level 6"),
                    row("Level 7"),
                    row("Level 8"),
                    row("Level 9"),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Apptext(text: "Level 10", size: 14.sp, weight: FontWeight.w400, textcolor: maincolor),
                      Container(width: 22,height: 22,
                        decoration: BoxDecoration( borderRadius:
                        BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: saffron)),
                        child: Center(
                          child: Container(width: 15,height: 15,
                            decoration: BoxDecoration( borderRadius:
                            BorderRadius.circular(10),
                                color: saffron,
                                ),
                          ),
                        ),
                      )
                    ]),
                     Padding(
                      padding: EdgeInsets.only(top: 20).r,
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Button(
                            name: "Done",
                            btncolor: maincolor,
                            textcolor: white,
                            width: 300.w,
                            height: 50.h),
                      ),
                    )
                  ]),
            ),
          ),
        );
      },
    );
  }

  Widget row(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Apptext(
              text: title,
              size: 14.sp,
              weight: FontWeight.w400,
              textcolor: maincolor),
          const Icon(Icons.circle_outlined,color: saffron,),
        ],
      ),
    );
  }
}
