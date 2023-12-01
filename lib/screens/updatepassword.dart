import 'package:flutter/material.dart';


import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class Updatepassword_screen extends StatelessWidget {
  const Updatepassword_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: maincolor,
        ),
        backgroundColor: backcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Apptext(
                  text: "Update Password",
                  size: 16,
                  weight: FontWeight.w500,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Apptext(
                  text: "Old Password",
                  size: 12,
                  weight: FontWeight.w500,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: buildSizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Apptext(
                  text: "New Password",
                  size: 12,
                  weight: FontWeight.w500,
                  textcolor: maincolor),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: buildSizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Apptext(
                  text: "Confirm Password",
                  size: 12,
                  weight: FontWeight.w500,
                  textcolor: maincolor),
            ),
            buildSizedBox(),
            const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 150),
                  child: Button(
                      name: "Update",
                      btncolor: maincolor,
                      textcolor: white,
                      width: 250,
                      height: 50),
                ))
          ]),
        ),
      ),
    );
  }

  SizedBox buildSizedBox() {
    return SizedBox(
      height: 40,
      child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.visibility_off,
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: white)),
            fillColor: white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
      ),
    );
  }
}
