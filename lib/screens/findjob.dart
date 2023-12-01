import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/bottomnav.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';


class Findjob_screen extends StatelessWidget {
  const Findjob_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Apptext(
                      text: "No Savings",
                      size: 16,
                      weight: FontWeight.w700,
                      textcolor: maincolor),
                ),
                Apptext(
                    text: "You don't have any jobs saved, please ",
                    size: 12,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
                Apptext(
                    text: "find it in search to save jobs",
                    size: 12,
                    weight: FontWeight.w400,
                    textcolor: maincolor),
              ]),
            ),
            Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/i.png",
                  height: 207,
                )),
            const Button(
                name: "Find a job",
                btncolor: maincolor,
                textcolor: white,
                width: 200,
                height: 50)
          ]),
      bottomNavigationBar: Bottomnav(currentindex: 4),
    );
  }
}
