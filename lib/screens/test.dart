import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class test extends StatelessWidget {
test({super.key});



  //bool vertical = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

body:  Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  TabBar(
    tabs: [
      Tab(child: Text("About Us",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),)),
      Tab(
        child: Text("Post",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),),
      ),
      Tab(
        child: Text("Jobs",style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500),),
      ),

    ],
    indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Creates border
        color: saffron),
    labelColor: white,
   unselectedLabelColor: maincolor,
    indicatorSize:TabBarIndicatorSize.tab,
  ),
 // Expanded(child: TabBarView(children: []))
],)


      ),
    );
  }
}
