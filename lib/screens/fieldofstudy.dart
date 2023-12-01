import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/text.dart';

class Fieldofstudy_screen extends StatelessWidget {
  const Fieldofstudy_screen({super.key});

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
                  child: Apptext(text: "Field of study", size: 16, weight: FontWeight.w700, textcolor: maincolor),
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
                      hintText: "Information",
                      filled: true,
                      fillColor: Colors.white),
                ),
                SizedBox(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "Information Technology", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "Business Information Systems", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "Computer Information Science", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "Computer Information Systems", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "Healt Information Management", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "History and Information", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "Information Assurance", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "Information Security", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "BInformation Systems", size: 12, weight: FontWeight.w400, textcolor: maincolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Apptext(text: "Information Systems Major", size: 12, weight: FontWeight.w400, textcolor: maincolor),
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
