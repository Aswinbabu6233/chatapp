import 'package:chatapp/Screens/addVideo.dart';
import 'package:chatapp/Screens/chatpage.dart';
import 'package:chatapp/Screens/homepage.dart';
import 'package:chatapp/Screens/profilepage.dart';
import 'package:chatapp/Screens/searchpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int index = 0;
  List<Widget> Screens = [
    Homepage(),
    Searchpage(),
    AddVideo(),
    Chatpage(),
    profilepage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          padding: EdgeInsets.all(16),
          gap: 10,
          onTabChange: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          },
          tabs: [
            GButton(
              icon: CupertinoIcons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
            ),
            GButton(
              icon: CupertinoIcons.add_circled,
              text: "Add",
            ),
            GButton(
              icon: CupertinoIcons.chat_bubble_text_fill,
              text: "Chat",
            ),
            GButton(
              icon: CupertinoIcons.person,
              text: "Profile",
            ),
          ]),
      body: Screens[index],
    );
  }
}
