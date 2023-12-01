import 'package:flutter/material.dart';
import 'package:project/widgets/text.dart';


import '../constants/colors.dart';
import 'buttons.dart';

class Botmsheet extends StatelessWidget {
  final String title;
  final String stitle;
  final String btn1;
  final String btn2;
  final double btnwidth;
  final double btnheight;

  const Botmsheet(
      {super.key,
      required this.title,
      required this.stitle,
      required this.btn1,
      required this.btn2,
      required this.btnwidth,
      required this.btnheight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      color: Colors.transparent,
      child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0))),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 5,
                    width: 30,
                    color: maincolor,
                  ),
                  Column(
                    children: [
                      Apptext(
                          text: title,
                          size: 16,
                          weight: FontWeight.w700,
                          textcolor: maincolor),
                      Apptext(
                          text: stitle,
                          size: 12,
                          weight: FontWeight.w400,
                          textcolor: maincolor),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Button(
                            name: btn1,
                            btncolor: maincolor,
                            textcolor: white,
                            width: btnwidth,
                            height: btnheight),
                      ),
                      Button(
                          name: btn2,
                          btncolor: btncolor,
                          textcolor: maincolor,
                          width: btnwidth,
                          height: btnheight)
                    ],
                  )
                ]),
          )),
    );
  }
}
