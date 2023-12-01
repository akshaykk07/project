import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/searchlanguage.dart';
import 'package:project/screens/uploadresume.dart';
import '../constants/colors.dart';
import '../widgets/text.dart';
import 'aboutme.dart';
import 'addappriciation.dart';
import 'addcv.dart';
import 'addeduction.dart';
import 'addlanguage.dart';
import 'addskil.dart';
import 'changeeducation.dart';
import 'changeskill.dart';
import 'editappreciation.dart';
import 'language.dart';

class Editprofile_Screen extends StatelessWidget {
  const Editprofile_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: white),backgroundColor: maincolor,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15).r,
          child: Icon(
            Icons.settings,
            color: white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15).r,
          child: Image.asset("assets/kk (2).png"),
        ),
      ],),
      backgroundColor: backcolor,
      body: Column(children: [
        Container(
          height: 170.h,
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
                const EdgeInsets.only(left: 20, bottom: 20, right: 20,)
                    .r,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                  Padding(
                    padding: const EdgeInsets.only(top: 15).r,
                    child: Row(
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
                        SizedBox(width: 15.w,),
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
                      ],
                    ),
                  )
                ]),
          ),
        ),
        Expanded(
            child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20).r,
            child: ListView(children: [
              Container(
                height: 185.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r, color: white),
                child: Padding(
                  padding: const EdgeInsets.all(5).r,
                  child: Column(children: [
                    ListTile(
                      leading: Image.asset("assets/ic (7).png"),
                      title: Apptext(
                          text: "About me",
                          size: 14.sp,
                          weight: FontWeight.w700,
                          textcolor: maincolor),
                      trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Aboutme_screen(),
                                ));
                          },
                          child: Image.asset("assets/w.png")),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.shade400,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20).r,
                      child: Apptext(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus id commodo egestas metus interdum dolor.",
                          size: 14.sp,
                          weight: FontWeight.w400,
                          textcolor: maincolor),
                    )
                  ]),
                ),
              ),
              NewWidget(
                  lead: "assets/ic (6).png",
                  title: "Work experience",
                  stitle: "Manager",
                  text1: "Amazon Inc",
                  text2: "Jan 2015 - Feb 2022",
                  click: () {},
                  add: () {}),
              NewWidget(
                  lead: "assets/ic (5).png",
                  title: "Education",
                  stitle: "Information Technology",
                  text1: "University of Oxford",
                  text2: "Sep 2010 - Aug 2013",
                  click: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Changeeducation_screen(),
                        ));
                  },
                  add: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Addeducation_screen(),
                        ));
                  }),
              Padding(
                padding: const EdgeInsets.only(top: 10).r,
                child: Container(
                  height: 185.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r, color: white),
                  child: Padding(
                    padding: const EdgeInsets.all(5).r,
                    child: Column(children: [
                      ListTile(
                        leading: Image.asset("assets/ic (4).png"),
                        title: Apptext(
                            text: "Skill",
                            size: 14.sp,
                            weight: FontWeight.w700,
                            textcolor: maincolor),
                        trailing: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Changeskill2_screen(),
                                  ));
                            },
                            child: Image.asset("assets/w.png")),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.shade400,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            box("Leadership", 30.h, 100.w),
                            box("Teamwork", 30.h, 100.w),
                            box("Visioner", 30.h, 100.w),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          box("Target oriented", 30.h, 100.w),
                          box("Consistent", 30.h, 100.w),
                          box("+5 more", 30.h, 80.w),
                        ],
                      )
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10).r,
                child: Container(
                  height: 185.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r, color: white),
                  child: Padding(
                    padding: const EdgeInsets.all(5).r,
                    child: Column(children: [
                      ListTile(
                        leading: Image.asset("assets/ic (2).png"),
                        title: Apptext(
                            text: "Language",
                            size: 14.sp,
                            weight: FontWeight.w700,
                            textcolor: maincolor),
                        trailing: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Language_screen(),
                                  ));
                            },
                            child: Image.asset("assets/w.png")),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.shade500,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          box("English", 30.h, 70.w),
                          box("German", 30.h, 100.w),
                          box("Spanish", 30.h, 100.w),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            box("Mandarin", 30.h, 60.w),
                            box("Italy", 30.h, 80.w),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
              NewWidget(
                lead: "assets/ic (3).png",
                title: "Appreciation",
                stitle: "Wireless Symposium (RWS)",
                text1: "Young Scientist",
                text2: "2014",
                click: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Editappriciation_screen(),
                      ));
                },
                add: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Addappriciation_screen(),
                      ));
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r, color: white),
                  child: Padding(
                    padding: const EdgeInsets.all(5).r,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Image.asset("assets/ii.png"),
                            title: Apptext(
                                text: "Resume",
                                size: 14.sp,
                                weight: FontWeight.w700,
                                textcolor: maincolor),
                            trailing: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Addcv_screen(),
                                      ));
                                },
                                child: Image.asset("assets/ic (1).png")),
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey.shade400,
                          ),
                          ListTile(
                            leading: Image.asset("assets/PDF.png"),
                            title: Apptext(
                                text: "Jamet kudasi - CV - UI/UX ",
                                size: 12.sp,
                                weight: FontWeight.w400,
                                textcolor: maincolor),
                            subtitle: Apptext(
                                text: "867 Kb 14 Feb 2022 at 11:30 am",
                                size: 12.sp,
                                weight: FontWeight.w400,
                                textcolor: maincolor),
                            trailing: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Uploadresume_screen(),
                                      ));
                                },
                                child: Image.asset("assets/de.png")),
                          )
                        ]),
                  ),
                ),
              )
            ]),
          ),
        )),
      ]),
    );
  }

  Widget box(String title, double height, double width) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 10).r,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10).r, color: Colors.grey[200]),
        child: Center(
            child: Apptext(
                text: title,
                size: 12.sp,
                weight: FontWeight.w400,
                textcolor: black.withOpacity(0.5))),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.lead,
    required this.title,
    required this.stitle,
    required this.text1,
    required this.text2,
    required this.click,
    required this.add,
  });

  final String lead;
  final String title;
  final String stitle;
  final String text1;
  final String text2;
  final void Function() click;
  final void Function() add;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10).r,
      child: Container(
        height: 190.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10).r, color: white),
        child: Padding(
          padding: const EdgeInsets.all(5).r,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ListTile(
              leading: Image.asset(lead),
              title: Apptext(
                  text: title,
                  size: 14.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
              trailing:
                  InkWell(onTap: add, child: Image.asset("assets/ic (1).png")),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey.shade400,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 25).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Apptext(
                      text: stitle,
                      size: 14.sp,
                      weight: FontWeight.w700,
                      textcolor: maincolor),
                  InkWell(onTap: click, child: Image.asset("assets/w.png")),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20).r,
              child: Apptext(
                  text: text1,
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20).r,
              child: Apptext(
                  text: text2,
                  size: 12.sp,
                  weight: FontWeight.w400,
                  textcolor: maincolor),
            ),
          ]),
        ),
      ),
    );
  }
}
