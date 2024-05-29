import 'package:chatapp/models/video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_side_bar extends StatelessWidget {
  const Home_side_bar({super.key, required this.video});
  final Video video;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _sidebarItem("like", video.likes),
          _sidebarItem("comment", video.comments),
          _sidebarItem("share", "Share"),
        ],
      ),
    );
  }

  _sidebarItem(String Iconname, String Label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/$Iconname.png",
          color: Colors.white,
          height: 38,
          width: 38,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          Label,
          style: GoogleFonts.sansita(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    );
  }
}
