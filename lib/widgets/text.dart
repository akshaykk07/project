import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Apptext extends StatelessWidget {
  final String text;
  final Color textcolor;
  final double size;
   FontWeight weight;
   Apptext({ required this.text, required this.size,required this.weight, required this.textcolor,});

  @override
  Widget build(BuildContext context) {
    return  Text(text,style: GoogleFonts.dmSans(color: textcolor,fontSize: size,fontWeight: weight),);


  }
}
