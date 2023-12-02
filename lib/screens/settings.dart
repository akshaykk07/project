import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/updatepassword.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';
import 'login_screen.dart';

class Settings_screen extends StatefulWidget {
  const Settings_screen({super.key});

  @override
  State<Settings_screen> createState() => _Settings_screenState();
}

class _Settings_screenState extends State<Settings_screen> {

  bool light0 = true;
  bool light1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: maincolor),
        backgroundColor: backcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20).r,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20).r,
              child: Apptext(
                  text: "Settings",
                  size: 16.sp,
                  weight: FontWeight.w500,
                  textcolor: maincolor),
            ),
                customtile( "assets/dark (2).png", "Notification"),
                customtile( "assets/dark (1).png", "Dark mood"),
            InkWell(
                onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => Updatepassword_screen(),));
                },
                child: buildListTile("assets/dark (6).png", "Password", "assets/aa.png")),
            InkWell(
                onTap: () {
                  remov(context);
                },
                child: buildListTile(
                    "assets/dark (5).png", "Logout", "assets/aa.png")),
             Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 200).r,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Button(
                        name: "SAVE",
                        btncolor: maincolor,
                        textcolor: white,
                        width: 250.w,
                        height: 50.h),
                  ),
                )),
          ]),
        ),
      ),
    );
  }

  Widget buildListTile(String img, String title, String trailing) {
    return Padding(
      padding: const EdgeInsets.only(top: 10).r,
      child: ListTile(
        leading: Image.asset(img),
        title: Apptext(
            text: title,
            size: 12.sp,
            weight: FontWeight.w400,
            textcolor: maincolor),
        trailing: SizedBox(
          height: 50.h,
          width: 50.w,
          child: Image.asset(
            trailing,
          ),
        ),
        tileColor: white,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10).r,
            borderSide: BorderSide(color: white)),
      ),
    );
  }

  void remov(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 300.0.h,
            color: Colors.transparent,
            child: Container(
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0).r,
                        topRight: Radius.circular(10.0).r)),
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 5.h,
                          width: 30.w,
                          color: maincolor,
                        ),
                        Column(
                          children: [
                            Apptext(
                                text: "Log out ?",
                                size: 16.sp,
                                weight: FontWeight.w700,
                                textcolor: maincolor),
                            Apptext(
                                text: "Are you sure you want to leave?",
                                size: 12.sp,
                                weight: FontWeight.w400,
                                textcolor: maincolor),
                          ],
                        ),
                         Padding(
                          padding: EdgeInsets.only(left: 20, right: 20).r,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10).r,
                                child: InkWell(
                                  onTap: (){

                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_screen(),));
                                  },
                                  child: Button(
                                      name: "YES",
                                      btncolor: maincolor,
                                      textcolor: white,
                                      width: double.infinity,
                                      height: 50.h),
                                ),
                              ),
                              InkWell(
                                onTap: (){

                                  Navigator.pop(context);
                                },
                                child: Button(
                                    name: "NO",
                                    btncolor: btncolor,
                                    textcolor: maincolor,
                                    width: double.infinity,
                                    height: 50.h),
                              )
                            ],
                          ),
                        )
                      ]),
                )),
          );
        });
  }

  Widget customtile(String img, String title, ) {
    return Padding(
      padding: const EdgeInsets.only(top: 10).r,
      child: ListTile(
        leading: Image.asset(img),
        title: Apptext(
            text: title,
            size: 12.sp,
            weight: FontWeight.w400,
            textcolor: maincolor),
        trailing:  Switch(
          activeColor: Colors.green,
          value: light0,
          onChanged:
              (bool value) {
            setState(() {
              light0 = value;
            });
          },
        ),
        tileColor: white,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10).r,
            borderSide: BorderSide(color: white)),
      ),
    );
  }
}
