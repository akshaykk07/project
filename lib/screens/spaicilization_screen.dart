import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../constants/colors.dart';
import '../widgets/box.dart';
import '../widgets/text.dart';
import 'filter1.dart';

class Spl_screen extends StatelessWidget {
  const Spl_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
       iconTheme: IconThemeData(color: maincolor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10).r,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20,top: 10,bottom: 20).r,
                child: SizedBox(
                  height: 40.h,
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(right: 20).r,
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10).r),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 10).r,
                              hintText: "Search",
                              hintStyle:  TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      )),
                      InkWell(
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Filter1_screen() ,));
                        },
                        child: Container(
                          height: 40.h,
                          width: 40.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: saffron),
                          child: Image.asset("assets/fli.png",width: 40,height: 40,),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20,bottom: 10).r,
                child: Apptext(
                    text: "Spacilazation",
                    size: 16.sp,
                    weight: FontWeight.w700,
                    textcolor: maincolor),
              ),
             SizedBox(
                height: 15.h,
              ),

              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Box(
                          title: "Design",
                          stitle: "140 Jobs",
                          theam: saffron,
                          Icon: "assets/design.png",
                          txttheam: white,
                        ),
                        Box(
                          title: "Finance",
                          stitle: "250 Jobs",
                          theam: white,
                          Icon: "assets/money.png",
                          txttheam: maincolor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Box(
                          title: "Education",
                          stitle: "150 Jobs",
                          theam: white,
                          Icon: "assets/edu.png",
                          txttheam: maincolor,
                        ),
                        Box(
                          title: "Restaurant",
                          stitle: "80 Jobs",
                          theam: white,
                          Icon: "assets/rest.png",
                          txttheam: maincolor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Box(
                          title: "Helth",
                          stitle: "235 Jobs",
                          theam: white,
                          Icon: "assets/hel.png",
                          txttheam: maincolor,
                        ),
                        Box(
                          title: "Programmer",
                          stitle: "412 Jobs",
                          theam: white,
                          Icon: "assets/pro.png",
                          txttheam: maincolor,
                        ),
                      ],
                    )
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
