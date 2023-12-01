import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/widgets/text.dart';

import '../constants/colors.dart';
import '../screens/spaicilization_screen.dart';


class Searchbox extends StatelessWidget {
  //final String title;
  const Searchbox({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: [
      Padding(
        padding: const EdgeInsets.all(5).r,
        child: InkWell(
          onTap: (){

           Navigator.push(context, MaterialPageRoute(builder: (context) => Spl_screen(),));
          },
          child: Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10).r, color: maincolor),
            child: Image.asset("assets/f.png"),
          ),
        ),
      ),
      serchbox("Senior Design"),
      serchbox("Designer"),
      serchbox("Full-time"),
      serchbox("Part time"),
    ]);
  }

  Widget serchbox(String titile) {
    return Padding(
      padding: const EdgeInsets.all(5).r,
      child: Container(
        height: 40.h,
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10).r,
          color: Colors.grey[300],
        ),
        child: Center(
            child: Apptext(
                text: titile,
                size: 12.sp,
                weight: FontWeight.w400,
                textcolor: maincolor)),
      ),
    );
  }
}
