import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/post.dart';
import 'package:project/screens/post1.dart';
import 'package:project/screens/postcompany.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/myconnectionbox.dart';


class Myconnection_screen extends StatelessWidget {
  const Myconnection_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backcolor,
      body:  SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => Postjob_screen(),));
                      },
                      child: conbox(img: "assets/goo (1).png", title: "Google Inc")),
                  conbox(img: "assets/goo (2).png", title: "Facebook Inc"),
                ],
                ),

                const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  conbox(img: "assets/goo (3).png", title: "Apple Inc"),
                  conbox(img: "assets/goo (4).png", title: "Twitter Inc"),
                ],
                ),

                const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  conbox(img: "assets/goo (5).png", title: "Dribble Inc"),
                  conbox(img: "assets/m.png", title: "Microsoft Inc"),
                ],
                ),






                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Padding(
                      padding:  EdgeInsets.only(
                          left: 20, top: 20, bottom: 20, right: 10).r,
                      child: InkWell(
                        onTap: (){

                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Post_screen() ,));
                        },
                        child: Button(
                          name: "posting",
                          btncolor: btncolor,
                          textcolor: maincolor,
                          height: 40.h,
                          width: 100.w,
                        ),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                          right: 20, top: 20, bottom: 20, left: 10).r,
                      child: Button(
                        height: 40.h,
                        name:"My connection",
                        btncolor: maincolor,
                        textcolor: white,
                        width: 100.w,
                      ),
                    ))
                  ],
                ),
              ]),
        ),
      ),

    );
  }
}
