import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../constants/colors.dart';
import '../widgets/bottomnav.dart';
import '../widgets/searchscreenbox.dart';
import '../widgets/searchscreenbox2.dart';

class Search_screen extends StatelessWidget {
  const Search_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: maincolor,
        iconTheme: IconThemeData(color: white),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration:  BoxDecoration(
                  color: maincolor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30).r,
                      bottomRight: Radius.circular(30).r)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20,bottom: 5,top: 20).r,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 50.h,
                        child: TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: "Design",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 12.sp),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            fillColor: white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10).r,
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ),
                        )),
                     SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                        height: 50.h,
                        child: TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: "California, USA",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 12.sp),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            fillColor: white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: const Icon(
                              Icons.location_on,
                              color: saffron,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10).r,
                  child: Column(children: [
                    SizedBox(height: 50.h, child: Searchbox()),
                    Expanded(
                      child: ListView(
                        children: const [
                          Searchscreenbox2(
                            img: "assets/g.png",
                            titile: "UI/UX Designer",
                            ic: Icons.bookmark_outline_outlined,
                            stitile: "Google",
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
                        ],
                      ),
                    )
                  ]),
                ),
              ))
        ],
      ),
      bottomNavigationBar:Bottomnav(currentindex: 0),
    );
  }
}
