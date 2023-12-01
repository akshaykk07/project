import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class Settings_screen extends StatelessWidget {
  const Settings_screen({super.key});

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
                  text: "Language",
                  size: 16,
                  weight: FontWeight.w500,
                  textcolor: maincolor),
            ),
            buildListTile(
                "assets/dark (2).png", "Notification", "assets/dark (4).png"),
            buildListTile(
                "assets/dark (1).png", "Dark mood", "assets/dark (3).png"),
            buildListTile("assets/dark (6).png", "Password", "assets/aa.png"),
            InkWell(
                onTap: () {
                  remov(context);
                },
                child: buildListTile(
                    "assets/dark (5).png", "Logout", "assets/aa.png")),
            const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: Button(
                      name: "SAVE",
                      btncolor: maincolor,
                      textcolor: white,
                      width: 250,
                      height: 50),
                )),
          ]),
        ),
      ),
    );
  }

  Widget buildListTile(String img, String title, String trailing) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListTile(
        leading: Image.asset(img),
        title: Apptext(
            text: title,
            size: 12,
            weight: FontWeight.w400,
            textcolor: maincolor),
        trailing: SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(
            trailing,
          ),
        ),
        tileColor: white,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: white)),
      ),
    );
  }

  void remov(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
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
                                text: "Log out ?",
                                size: 16,
                                weight: FontWeight.w700,
                                textcolor: maincolor),
                            Apptext(
                                text: "Are you sure you want to leave?",
                                size: 12,
                                weight: FontWeight.w400,
                                textcolor: maincolor),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Button(
                                    name: "YES",
                                    btncolor: maincolor,
                                    textcolor: white,
                                    width: double.infinity,
                                    height: 50),
                              ),
                              Button(
                                  name: "NO",
                                  btncolor: btncolor,
                                  textcolor: maincolor,
                                  width: double.infinity,
                                  height: 50)
                            ],
                          ),
                        )
                      ]),
                )),
          );
        });
  }
}
