import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/text.dart';

class Institute_screen extends StatelessWidget {
  const Institute_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: const Icon(
          Icons.arrow_back_sharp,
          color: maincolor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Apptext(text: "Institution name", size: 16, weight: FontWeight.w700, textcolor: maincolor),
                ),
                TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      suffixIcon: Icon(Icons.close,color: Colors.grey,),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      hintText: "University of",
                      filled: true,
                      fillColor: Colors.white),
                ),
                SizedBox(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "University of Oxford", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "National University of Lesotho International School", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "University of Chester CE Academy", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "University of Chester Academy Northwich", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "University of Birmingham School", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "Bloomsburg University of Pennsylvania", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "California University of Pennsylvania", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "ClarionUniversity of Pennsylvania", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "East Stroundsburg State University of Pennsylvania", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),

                      ]),
                ),
                SizedBox()
              ]),
        ),
      ),
    );
  }
}
