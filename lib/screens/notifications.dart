import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/notbox.dart';
import '../widgets/text.dart';

class Notification_screen extends StatelessWidget {
  const Notification_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        actions: [
          Apptext(
              text: "Read all",
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Center(
              child: Apptext(
                  text: "Notifications",
                  size: 20.sp,
                  weight: FontWeight.w700,
                  textcolor: maincolor)),
          SizedBox(height: 10,),
          Expanded(
              child: ListView(
            children: [
              Notificationbox(
                titile: "Application sent",
                stitile:
                    "Applications for Google companies have entered for company review",
                time: "25 minutes ago",
                delete: "Delete",
                img: "assets/goo (1).png",
                theam: btncolor.withOpacity(1.0),
              ),
              Notificationbox(
                titile: "Application sent",
                stitile:
                "Applications for Facebook companies have entered for company review",
                time: "25 minutes ago",
                delete: "Delete",
                img: "assets/goo (2).png",
              ),
              Notificationbox(
                titile: "Application sent",
                stitile:
                "Applications for Apple companies have entered for company review",
                time: "25 minutes ago",
                delete: "Delete",
                img: "assets/goo (3).png",

              ),
              Notificationbox(
                titile: "Application sent",
                stitile:
                "Applications for Twitter companies have entered for company review",
                time: "25 minutes ago",
                delete: "Delete",
                img: "assets/goo (4).png",

              ),
              Notificationbox(
                titile: "Application sent",
                stitile:
                "Applications for Dribbile companies have entered for company review",
                time: "25 minutes ago",
                delete: "Delete",
                img: "assets/goo (5).png",

              ),

            ],
          ))
        ]),
      ),
    );
  }
}
