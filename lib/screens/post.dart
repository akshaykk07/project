import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/bottomnav.dart';
import '../widgets/buttons.dart';
import '../widgets/postbox.dart';
import 'myconnection.dart';


class Post_screen extends StatelessWidget {
  const Post_screen({super.key});

  get title => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_sharp,
          color: maincolor,
        ),
      ),
      body: Padding(
        padding:  const EdgeInsets.all(5).r,
        child: ListView(children: [
          const postbox(
              title: "Arnold Leonardo",
              stitle: "21 minuts ago",
              img: "assets/m (2).png",
              caption: "What are the characteristics of a fake job \ncall form?",
              content:
                  "Because I always find fake job calls so I'm confused which job to take can you share your knowledge here? thank you"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 10).r,
                child: Button(
                  name: "Posting",
                  btncolor: btncolor,
                  textcolor: maincolor,
                  height: 40.h,
                  width: 100.w,
                ),
              )),
              Expanded(
                  child: Padding(
                padding:
                    EdgeInsets.only(right: 20, top: 20, bottom: 20, left: 10).r,
                child: InkWell(
                  onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Myconnection_screen(),));

                  },
                  child: Button(
                    height: 40.h,
                    name: "My connection",
                    btncolor: maincolor,
                    textcolor: white,
                    width: 100.w,
                  ),
                ),
              ))
            ],
          ),
          postbox(
              title: "Monica",
              stitle: "45 minuts ago",
              img: "assets/mee.png",
              caption: "Experience when moving to a new job",
              content:
                  "Culture shock when moving to a new job is normal. This is not something wrong and I personally experienced it, when I experienced this when I changed jobs in 2 days...Read more")
        ]),
      ),
    );
  }
}
