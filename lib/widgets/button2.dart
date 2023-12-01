import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class Button2 extends StatelessWidget {
  final String name;
  final Color btncolor;
  final Color textcolor;
 final String img;
  Button2({super.key, required this.name, required this.btncolor,  this.img="", required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: btncolor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
            width: 16.w,
            child: Image.asset(img),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            name,
            style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700, fontSize: 14.sp, color: textcolor),
          ),
        ],
      )),
    );
    ;
  }
}
