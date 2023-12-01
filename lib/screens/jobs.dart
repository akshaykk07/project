import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/searchscreenbox2.dart';
import 'jobdescrip.dart';


class Jobs_screen extends StatelessWidget {
  const Jobs_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.all(10).r,
        child: ListView(children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Jobdescrip_screen(),));
            },
            child: Searchscreenbox2(
              img: "assets/g.png",
              titile: "UI/UX Designer",
              ic: Icons.bookmark_outline_outlined,
              stitile: "Google",
            ),
          ),
          Searchscreenbox2(
              img: "assets/goo (2).png",
              titile: "Lead Designer",
              ic: Icons.bookmark_outline_outlined,
              stitile: "Facebook"),
          Searchscreenbox2(
            img: "assets/goo (3).png",
            titile: "UI/UX Designer",
            ic: Icons.bookmark_outline_outlined,
            stitile: "Apple",
          ),
          Searchscreenbox2(
            img: "assets/goo (4).png",
            titile: "Lead Designer",
            ic: Icons.bookmark_outline_outlined,
            stitile: "Twitter",)


        ]),
      ),
    );
  }
}
