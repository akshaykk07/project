import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';
import '../widgets/editjobbox.dart';
import '../widgets/text.dart';
import 'company.dart';
import 'jobposition.dart';

class Editaddjob_screen extends StatelessWidget {
  const Editaddjob_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        iconTheme: IconThemeData(color: maincolor),
        actions: [
          Apptext(
              text: "Post",
              size: 12.sp,
              weight: FontWeight.w700,
              textcolor: saffron),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Apptext(
                  text: "Add a job",
                  size: 16.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor),
              Editjob_box(
                  title: "Job position*",
                  stitle: "Administrative Assistant",
                  click: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Jobposition_Screen(),
                        ));
                  }),
              Editjob_box(
                  title: "Type of workplace", stitle: "On-site", click: () {}),
              Editjob_box(
                  title: "Job location",
                  stitle: "California, USA",
                  click: () {}),
              Editjob_box(
                  title: "Company",
                  stitle: "Apple Inc",
                  click: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Company_screen(),
                        ));
                  }),
              Editjob_box(
                  title: "Employment type",
                  stitle: "Full Time",
                  click: () {
                    modalBottomSheetMenu(context);
                  }),
              Container(
                height: 150.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius
                        .circular(20)
                        .r,
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1.0,
                          color: Colors.grey.shade100,
                          blurRadius: 10.10),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(10).r,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Apptext(
                                text: "Description",
                                size: 14.sp,
                                weight: FontWeight.w700,
                                textcolor: black),
                            Image.asset(
                              "assets/Edit.png",
                              width: 24.w,
                              height: 24.h,
                            )
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey[300],
                        ),
                        Apptext(
                            text:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus id commodo egestas metus interdum dolor.",
                            size: 12.sp,
                            weight: FontWeight.w400,
                            textcolor: black),
                      ]),
                ),
              )
            ]),
      ),
    );
  }

  void modalBottomSheetMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 370.0.h,
            color: Colors.transparent,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius
                            .circular(10.0)
                            .r,
                        topRight: const Radius
                            .circular(10.0)
                            .r)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10).r,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10).r,
                            child: Container(
                              height: 5.h,
                              width: 30.w,
                              color: maincolor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Apptext(
                                text: "Choose Job Type",
                                size: 16.sp,
                                weight: FontWeight.w700,
                                textcolor: maincolor),
                          ),
                         SizedBox(child: Column( children: [
                           Padding(
                             padding: const EdgeInsets.only(top: 8),
                             child: Apptext(
                                 text:
                                 "Determine and choose the type of work according ",
                                 size: 12.sp,
                                 weight: FontWeight.w400,
                                 textcolor: maincolor),
                           ),
                           Apptext(
                               text: "to what you want",
                               size: 12.sp,
                               weight: FontWeight.w400,
                               textcolor: maincolor),
                         ]),),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, left: 10, right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Apptext(
                                    text: "Full time",
                                    size: 14.sp,
                                    weight: FontWeight.w700,
                                    textcolor: maincolor),
                                Container(height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: saffron)),
                                    child: Center(
                                      child: Container(height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: saffron),
                                            color: saffron),),
                                    ))
                              ],
                            ),
                          ),
                          row("Part time"),
                          row("Contract"),
                          row("Temporary"),
                          row("Volunteer"),
                          row("Apprenticeship"),
                        ],)
                        ]),
                  ),
                )),
          );
        });
  }

  Widget row(String name) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 10, right: 10).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Apptext(
              text: name,
              size: 14.sp,
              weight: FontWeight.w700,
              textcolor: maincolor),
          const Icon(
            Icons.circle_outlined,
            color: saffron,
          )
        ],
      ),
    );
  }
}
