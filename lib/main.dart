import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/screens/addappriciation.dart';
import 'package:project/screens/addlanguage.dart';
import 'package:project/screens/addpost.dart';
import 'package:project/screens/changeeducation.dart';
import 'package:project/screens/checkemail.dart';
import 'package:project/screens/company.dart';
import 'package:project/screens/createjobpost.dart';
import 'package:project/screens/editaddjob.dart';
import 'package:project/screens/editprofile.dart';
import 'package:project/screens/fieldofstudy.dart';
import 'package:project/screens/filter1.dart';
import 'package:project/screens/institutename.dart';
import 'package:project/screens/jobcompany_screen.dart';
import 'package:project/screens/jobdescrip.dart';
import 'package:project/screens/jobposition.dart';
import 'package:project/screens/levelofeducation.dart';
import 'package:project/screens/message.dart';
import 'package:project/screens/myconnection.dart';
import 'package:project/screens/myprofile.dart';
import 'package:project/screens/notifications.dart';
import 'package:project/screens/post.dart';
import 'package:project/screens/post1.dart';
import 'package:project/screens/postcompany.dart';
import 'package:project/screens/profile.dart';
import 'package:project/screens/savejob.dart';
import 'package:project/screens/search.dart';
import 'package:project/screens/searchlanguage.dart';
import 'package:project/screens/settings.dart';
import 'package:project/screens/sharedjob.dart';
import 'package:project/screens/spaicilization_screen.dart';
import 'package:project/screens/successfully.dart';
import 'package:project/screens/forgotpass_screen.dart';
import 'package:project/screens/login_screen.dart';
import 'package:project/screens/onbord_screen.dart';
import 'package:project/screens/register_screen.dart';
import 'package:project/screens/splash_screen.dart';
import 'package:project/screens/uplodcv.dart';

import 'home.dart';
import 'homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash_screen(),
    ),
    designSize: const Size(375, 812),) ;
  }
}



