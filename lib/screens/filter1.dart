import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/spaicilization_screen.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class Filter1_screen extends StatefulWidget {
  const Filter1_screen({super.key});

  @override
  State<Filter1_screen> createState() => _Filter1_screenState();
}

class _Filter1_screenState extends State<Filter1_screen> {
  @override
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        iconTheme: IconThemeData(color: maincolor),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Apptext(
                      text: "Filter",
                      size: 20.h,
                      weight: FontWeight.w700,
                      textcolor: maincolor)),
              Padding(
                padding: const EdgeInsets.only(top: 20).r,
                child: Apptext(
                    text: "Category",
                    size: 14.sp,
                    weight: FontWeight.w600,
                    textcolor: maincolor),
              ),
              Padding(
                padding:  const EdgeInsets.only(top: 15).r,
                child: SizedBox(
                    height: 50.h,
                    child: TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: white)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: white)),
                        hintText: "Category",
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        fillColor: white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10).r,
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "Sub Category",
                    size: 14.sp,
                    weight: FontWeight.w600,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: SizedBox(
                    height: 50.h,
                    child: TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: white)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: white)),
                        hintText: "Sub Category",
                        hintStyle:
                             TextStyle(color: Colors.grey, fontSize: 12.sp),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        fillColor: white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10).r,
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: Apptext(
                    text: "Location",
                    size: 14.sp,
                    weight: FontWeight.w600,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: SizedBox(
                    height: 50.h,
                    child: TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: white)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: white)),
                        hintText: "Location",
                        hintStyle:
                             TextStyle(color: Colors.grey, fontSize: 12.sp),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        fillColor: white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10).r,
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Apptext(
                        text: "Minimum Salary",
                        size: 14.sp,
                        weight: FontWeight.w400,
                        textcolor: maincolor),
                    Apptext(
                        text: "Maximum Salary",
                        size: 14.sp,
                        weight: FontWeight.w400,
                        textcolor: maincolor),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Apptext(
                        text: "Salary",
                        size: 14.sp,
                        weight: FontWeight.w600,
                        textcolor: maincolor),
                    const Icon(
                      Icons.keyboard_arrow_up,
                      color: maincolor,
                      size: 25,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).r,
                child: RangeSlider(
                  activeColor: saffron,
                  values: _currentRangeValues,
                  min: 0,
                  max: 1000,
                  divisions: 10,
                  labels: RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                ),
              ),
              Divider(
                thickness: 1.h,
                color: Colors.grey[300],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8).r,
                child: Apptext(
                    text: "Job Type",
                    size: 14.sp,
                    weight: FontWeight.w600,
                    textcolor: maincolor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20).r,
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer("Full time"),
                      buildContainer("Part time"),
                      buildContainer("Remote")
                    ],
                  ),
                ),
              ),
           SizedBox(height: 20.h,),
           Align(alignment: Alignment.center,
             child: InkWell(
               onTap: (){

                Navigator.pop(context);
               },
               child: Button(
                        name: "APPLY NOW",
                        btncolor: maincolor,
                        textcolor: white,
                        height: 50.h,
                        width: 250.w),
             ),
           ),
            ]),
      ),
    );
  }

  Container buildContainer(String title) {
    return Container(
      height: 30.h,
      width: 107.w,
      decoration: BoxDecoration(
          color: const Color(0xffFFD6AD), borderRadius: BorderRadius.circular(5).r),
      child: Center(
          child: Apptext(
              text: title,
              size: 10.sp,
              weight: FontWeight.w400,
              textcolor: maincolor)),
    );
  }
}
