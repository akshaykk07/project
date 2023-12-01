import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import '../widgets/text.dart';
class Company_screen extends StatelessWidget {
  const Company_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: maincolor),
        backgroundColor: backcolor,
        elevation: 0,),
      backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
Padding(
  padding: const EdgeInsets.only(bottom: 30).r,
  child:   Apptext(text: "Company", size: 20.sp, weight: FontWeight.w600, textcolor: maincolor),
),
              Padding(
                padding: const EdgeInsets.only(bottom: 20).r,
                child: SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10).r,borderSide: BorderSide(color: white)),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(Icons.close,color:maincolor),
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 12.sp),
                        enabledBorder: InputBorder.none,
                        fillColor: white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10).r)),
                  ),
                ),
              ),
              Expanded(
                child: ListView(children: [
                buildListTile("Google", "Internet", "assets/goo (1).png"),
                  buildListTile("Apple", "Electronic goods", "assets/goo (3).png"),
                  buildListTile("Amazon", "Internet", "assets/l (1).png"),
                  buildListTile("Dribbble", "Design", "assets/goo (5).png"),
                  buildListTile("Twitter", "Internet", "assets/goo (4).png"),
                  buildListTile("Facebook", "Internet", "assets/m.png"),
                  buildListTile("Microsoft", "Computer software", "assets/goo (3).png"),
                  buildListTile("Allianz", "Financial services", "assets/l (2).png"),
                  buildListTile("Adobe", "Computer software", "assets/l (4).png"),
                  buildListTile("AXA", "Insurance", "assets/l (3).png"),

                ],),
              )
        ]),
      ),
    );
  }

  ListTile buildListTile(String title,String stitle,String img) {
    return ListTile(leading: CircleAvatar(radius: 20.r,child: Image.asset(img),backgroundColor: white,),
                  tileColor: white,
                  title: Apptext(text: title, size: 12.sp, weight: FontWeight.w400, textcolor: maincolor),
                subtitle: Apptext(text: "Company. ${stitle}", size: 10.sp, weight: FontWeight.w400, textcolor: Colors.grey),);
  }
}
