import 'package:flutter/material.dart';


import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class Myprofile_screen extends StatefulWidget {
  const Myprofile_screen({super.key});

  @override
  State<Myprofile_screen> createState() => _Myprofile_screenState();
}

class _Myprofile_screenState extends State<Myprofile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 1.0,
                      color: Colors.grey.shade300,
                      blurRadius: 10.10),
                ],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: maincolor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, bottom: 20, right: 20, top: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: white,
                            child: Image.asset("assets/mask.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Apptext(
                                text: "Orlando Diggs",
                                size: 14,
                                weight: FontWeight.w500,
                                textcolor: white),
                          ),
                          Apptext(
                              text: "California, USA",
                              size: 12,
                              weight: FontWeight.w400,
                              textcolor: white),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.1)),
                        child: Center(
                          child: Apptext(
                              text: "Change Image",
                              size: 12,
                              weight: FontWeight.w400,
                              textcolor: white),
                        ),
                      )
                    ]),
              ),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.settings,
                      color: white,
                    ),
                  ),
                  Image.asset("assets/kk (2).png"),
                ],
              ),
            ),
          ],
        ),
        Expanded(
            child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildPadding("Fullname"),
                    txtfield("Brandone Louis",false),
                    buildPadding("Date of birth"),
                    txtfield("06 August 1992",true),
                    buildPadding("Gender"),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: white),
                              child: Row(
                                children: [
                                  Radio(
                                      value: true,
                                      groupValue: "groupValue",
                                      onChanged: (value) {}),
                                  Apptext(
                                      text: "Male",
                                      size: 12,
                                      weight: FontWeight.w400,
                                      textcolor: maincolor)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: white),
                              child: Row(
                                children: [
                                  Radio(
                                      value: true,
                                      groupValue: "groupValue",
                                      onChanged: (value) {}),
                                  Apptext(
                                      text: "Female",
                                      size: 12,
                                      weight: FontWeight.w400,
                                      textcolor: maincolor)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    buildPadding("Email address"),
                    txtfield("Brandonelouis@gmail.com",false),
                    buildPadding("Phone number"),
                    txtfield("+91 | 619 3456 7890",false),
                    buildPadding("Location"),
                    txtfield("California, United states",false),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                        alignment: Alignment.center,
                        child: Button(
                            name: "SAVE",
                            btncolor: maincolor,
                            textcolor: white,
                            width: 200,
                            height: 50))
                  ]),
            ),
          ),
        )),
      ]),
    );
  }

  Padding txtfield(String hint,bool prifx) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
          height: 40,
          child: TextFormField(
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: prifx==true?Icon(Icons.date_range,color: black,):SizedBox(),
              enabledBorder: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.grey),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              fillColor: white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )),
    );
  }

  Padding buildPadding(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Apptext(
          text: title, size: 12, weight: FontWeight.w500, textcolor: maincolor),
    );
  }
}
