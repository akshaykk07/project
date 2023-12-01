import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/searchlanguage.dart';
import '../constants/colors.dart';
import '../widgets/text.dart';
import 'aboutme.dart';
import 'addappriciation.dart';
import 'addcv.dart';
import 'addeduction.dart';
import 'addlanguage.dart';
import 'addskil.dart';
import 'editprofile.dart';

class Profile_screen extends StatelessWidget {
  const Profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Column(children: [
        Container(
          height: 230.h,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: 1.0,
                  color: Colors.grey.shade300,
                  blurRadius: 10.10),
            ],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30).r,
                bottomRight: Radius.circular(30).r),
            color: maincolor,
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, bottom: 20, right: 20, top: 30)
                    .r,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10).r,
                        child: const Icon(
                          Icons.settings,
                          color: white,
                        ),
                      ),
                      Image.asset("assets/kk (2).png"),
                    ],
                  ),
                  CircleAvatar(radius: 25.r,backgroundColor: white,child: Image.asset("assets/men.png"),),
                  Padding(
                    padding: const EdgeInsets.only(top: 10).r,
                    child: Apptext(
                        text: "Orlando Diggs",
                        size: 14.sp,
                        weight: FontWeight.w500,
                        textcolor: white),
                  ),
                  Apptext(
                      text: "California, USA",
                      size: 12.sp,
                      weight: FontWeight.w400,
                      textcolor: white),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Apptext(
                              text: "12k ",
                              size: 15.sp,
                              weight: FontWeight.w700,
                              textcolor: Colors.white),
                          Apptext(
                              text: "Follower",
                              size: 13.sp,
                              weight: FontWeight.w400,
                              textcolor: white),
                        ],
                      ),
                      Row(
                        children: [
                          Apptext(
                              text: "23k ",
                              size: 15.sp,
                              weight: FontWeight.w700,
                              textcolor: Colors.white),
                          Apptext(
                              text: "Following",
                              size: 13.sp,
                              weight: FontWeight.w400,
                              textcolor: white),
                        ],
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Editprofile_Screen(),));
                        },
                        child: Container(
                          height: 40.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white.withOpacity(0.1)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Editprofile_Screen(),
                                        ));
                                  },
                                  child: Apptext(
                                      text: "Edit profile",
                                      size: 12.sp,
                                      weight: FontWeight.w400,
                                      textcolor: white),
                                ),
                                const Icon(
                                  Icons.edit_note_outlined,
                                  color: white,
                                )
                              ]),
                        ),
                      )
                    ],
                  )
                ]),
          ),
        ),
        Expanded(
            child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20).r,
            child: ListView(children: [
              prafiletile(
                img: "assets/ic (7).png",
                title: "About me",
                click: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Aboutme_screen(),
                      ));
                },
              ),
              prafiletile(
                img: "assets/ic (6).png",
                title: "Work experience",
                click: () {},
              ),
              prafiletile(
                img: "assets/ic (5).png",
                title: "Education",
                click: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Addeducation_screen(),
                      ));
                },
              ),
              prafiletile(
                  img: "assets/ic (4).png",
                  title: "Skill",
                  click: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Addskill_screen(),
                        ));
                  }),
              prafiletile(
                  img: "assets/ic (3).png",
                  title: "Language",
                  click: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Searchlanguage_Screen(),
                        ));
                  }),
              prafiletile(
                  img: "assets/ic (2).png",
                  title: "Appreciation",
                  click: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Addappriciation_screen(),
                        ));
                  }),
              prafiletile(
                  img: "assets/ii.png",
                  title: "Resume",
                  click: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Addcv_screen(),
                        ));
                  }),
            ]),
          ),
        )),
      ]),
    );
  }
}

class prafiletile extends StatelessWidget {
  const prafiletile({
    super.key,
    required this.img,
    required this.title,
    required this.click,
  });

  final String img;
  final String title;
  final void Function() click;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20).r,
      child: ListTile(
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10).r,
            borderSide: BorderSide(color: white)),
        tileColor: white,
        leading: Image.asset(img),
        title: Apptext(
            text: title,
            size: 14.sp,
            weight: FontWeight.w700,
            textcolor: maincolor),
        trailing:
            InkWell(onTap: click, child: Image.asset("assets/ic (1).png")),
      ),
    );
  }
}
