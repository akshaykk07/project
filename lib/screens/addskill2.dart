import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class Addskill2_screen extends StatelessWidget {
  Addskill2_screen({super.key});

  Color theam = Colors.grey.withOpacity(0.2);
  Color text=Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backcolor,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_sharp,
          color: maincolor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Apptext(
                    text: "Add Skill",
                    size: 16,
                    weight: FontWeight.w700,
                    textcolor: maincolor),
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    hintText: "Search skill",
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListView(
                    children: [
                      Row(

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Expanded(child: skillbox("Leadership", theam,black.withOpacity(0.5),110)),
                          ),
                          Expanded(child: skillbox("Teamwork", theam,black.withOpacity(0.5),110)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Expanded(child: skillbox("Visioner", theam,black.withOpacity(0.5),110)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: skillbox("Target oriented", theam,black.withOpacity(0.5),150),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: skillbox("Consistent", theam,black.withOpacity(0.5),150),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child:
                                  skillbox("Good communication skills", theam,black.withOpacity(0.5),210),
                            ),
                            skillbox("English", theam,black.withOpacity(0.5),100),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200, top: 10),
                        child: skillbox("Responsibility", saffron,white,100,)
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 50, right: 50, top: 250),
                        child: Button(
                            name: "SAVE",
                            btncolor: maincolor,
                            textcolor: white,
                            width: double.infinity,
                            height: 50),
                      )
                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }

  Widget skillbox(
    String title,
    Color theam,
      Color tcolor,
      double width,
  ) {
    return Container(
      height: 40,
      width: width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: theam),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Expanded(
            child: Apptext(
                text: title,
                size: 12,
                weight: FontWeight.w400,
                textcolor: tcolor),
          ),
          const Icon(
            Icons.close,
            color: black,
          )
        ]),
      ),
    );
  }
}
