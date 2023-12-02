import 'package:flutter/material.dart';
import 'package:project/screens/createjobpost.dart';
import 'package:project/screens/message.dart';
import 'package:project/screens/post.dart';
import 'package:project/screens/savejob.dart';

import 'constants/colors.dart';
import 'home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List pages=[
    home(),
    Post_screen(),
    Createjobpost_screen(),
    Message_screen(),
    Savejob_Screen()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


         body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex:selectedIndex ,
          onTap: (newIndex)
          {
            setState(() {
              selectedIndex=newIndex;
            });

          },
          selectedItemColor: maincolor,
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
          ]),

    );
  }
}
