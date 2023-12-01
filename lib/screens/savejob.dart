import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/searchscreenbox2.dart';
import '../widgets/text.dart';

class Savejob_Screen extends StatelessWidget {
  const Savejob_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        elevation: 0,
        leading: SizedBox(
          width: 10.w,
        ),
        title: Center(
          child: Apptext(
              text: "Save Job",
              size: 20.sp,
              weight: FontWeight.w700,
              textcolor: maincolor),
        ),
        actions: [
          Apptext(
              text: "Delete all",
              size: 12.sp,
              weight: FontWeight.w400,
              textcolor: saffron),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10).r,
        child: ListView(children: [
          InkWell(
            onTap: () {
              modalBottomSheetMenu(context);
            },
            child: const Searchscreenbox2(
              img: "assets/g.png",
              titile: "UI/UX Designer",
              ic: Icons.more_vert,
              stitile: "Google",
            ),
          ),
          InkWell(
            onTap: () {
              modalBottomSheetMenu(context);
            },
            child: const Searchscreenbox2(
                img: "assets/goo (2).png",
                titile: "Lead Designer",
                ic: Icons.more_vert,
                stitile: "Facebook"),
          ),
          InkWell(
            onTap: () {
              modalBottomSheetMenu(context);
            },
            child: const Searchscreenbox2(
              img: "assets/goo (5).png",
              titile: "UI/UX Designer",
              ic: Icons.more_vert,
              stitile: "Dribble",
            ),
          ),
          InkWell(
            onTap: () {
              modalBottomSheetMenu(context);
            },
            child: const Searchscreenbox2(
              img: "assets/goo (4).png",
              titile: "Lead Designer",
              ic: Icons.more_vert,
              stitile: "Twitter",
            ),
          )
        ]),
      ),
    );
  }

  void modalBottomSheetMenu(BuildContext context) {
    showModalBottomSheet(
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20).r,
                topRight: Radius.circular(20).r),
            borderSide: BorderSide(color: white)),
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
                  child: Padding(
                    padding: const EdgeInsets.all(10).r,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 5.h,
                            width: 30.w,
                            color: maincolor,
                          ),
                          listTile("assets/li (4).png", "Send message"),
                          listTile("assets/li (3).png", "Shared"),
                          listTile("assets/li (2).png", "Delete"),
                          Container(
                            height: 50.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5).r,
                                color: maincolor),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20).r,
                              child: Row(children: [
                                Image.asset("assets/li (1).png"),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Apptext(
                                      text: "Apply",
                                      size: 14.sp,
                                      weight: FontWeight.w400,
                                      textcolor: white),
                                )
                              ]),
                            ),
                          ),
                        ]),
                  ),
                )),
          );
        });
  }

  Widget listTile(String img, String title) => ListTile(
        leading: Image.asset(img),
        title: Apptext(
            text: title,
            size: 14.sp,
            weight: FontWeight.w400,
            textcolor: maincolor),
      );
}
