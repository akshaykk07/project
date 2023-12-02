import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import '../constants/colors.dart';
import 'onbord_screen.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    gotoLogin();
    // // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: maincolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png"),
            Text(
              "Jobspot",
              style: GoogleFonts.dmSans(
                  fontSize: 26.sp, color: white, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Onbord_screen(),
        ));
  }
}



