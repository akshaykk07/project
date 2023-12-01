import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Bottomnav extends StatelessWidget {
  int currentindex;
   Bottomnav({super.key, required this.currentindex});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      currentIndex:currentindex ,
        selectedItemColor: saffron,
        unselectedItemColor: Colors.grey,
        items:  const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Home.png")), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Connection.png")),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                color: maincolor,size: 35,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Chat.png")), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Save.png")), label: ""),
        ]);
  }
}
