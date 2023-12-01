import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/addjobbox.dart';
import '../widgets/text.dart';

class Addjob_screen extends StatelessWidget {
  const Addjob_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: const Icon(
          Icons.close,
          color: maincolor,
        ),
        actions: [
          Apptext(
              text: "Post",
              size: 12,
              weight: FontWeight.w700,
              textcolor: saffron),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Apptext(text: "Add a job", size: 16, weight: FontWeight.w700, textcolor: maincolor),
          ),

          Addjob_box(title: "Job position*"),
          Addjob_box(title: "Type of workplace"),
          Addjob_box(title: "Job location"),
          Addjob_box(title: "Company"),
          Addjob_box(title: "Employment type"),
          Addjob_box(title: "Description"),

        ]),
      ),
    );
  }
}
