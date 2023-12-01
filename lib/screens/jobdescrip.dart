import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/circle.dart';
import '../widgets/text.dart';
import 'aboutcompany.dart';
import 'description.dart';

class Jobdescrip_screen extends StatelessWidget {
  const Jobdescrip_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
         iconTheme: IconThemeData(color: maincolor),
          actions: [
            Icon(
              Icons.more_vert,
              color: black,
            ),
            SizedBox(
              width: 10,
            )
          ],
          backgroundColor: white,
        ),
        body: Stack(children: [
          Column(children: [
            SizedBox(
              height: 80.h,
            ),
            Container(
              height: 114.h,
              width: double.infinity.w,
              color: Colors.grey[200],
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Apptext(
                        text: "UI/UX Designer",
                        size: 16.sp,
                        weight: FontWeight.w700,
                        textcolor: maincolor),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Apptext(
                            text: "Google",
                            size: 16.sp,
                            weight: FontWeight.w400,
                            textcolor: maincolor),
                        Circle(theam: maincolor, radius: 5.w),
                        Apptext(
                            text: "California",
                            size: 16.sp,
                            weight: FontWeight.w400,
                            textcolor: maincolor),
                        Circle(theam: maincolor, radius: 5.w),
                        Apptext(
                            text: "1 day ago",
                            size: 16,
                            weight: FontWeight.w400,
                            textcolor: maincolor),
                      ],
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10).r,
              child: TabBar(
                tabs: [
                  Tab(
                      child: Text(
                    "Description",
                    style: GoogleFonts.roboto(
                        fontSize: 14.sp, fontWeight: FontWeight.w500),
                  )),
                  Tab(
                    child: Text(
                      "Company",
                      style: GoogleFonts.roboto(
                          fontSize: 14.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // Creates border
                    color: maincolor),
                labelColor: white,
                unselectedLabelColor: maincolor,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
                child: TabBarView(
                    children: [Description_screen(), Aboutcompany_screen()]))
          ]),
          Positioned(
              top: 15.r,
              left: 150.r,
              right: 150.r,
              child: CircleAvatar(
                radius: 42.r,
                backgroundColor: Color(0xffAFECFE),
                child: Image.asset(
                  "assets/g.png",
                  height: 54.h,
                  width: 54.w,
                ),
              ))
        ]),
      ),
    );
  }
}
