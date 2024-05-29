import 'package:chatapp/_mock_data/mock.dart';
import 'package:chatapp/widgets/Home_sizebar.dart';
import 'package:chatapp/widgets/Videodetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _isfollowingselected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isfollowingselected = true;
                });
              },
              child: Text(
                "Following",
                style: GoogleFonts.poppins(
                    fontSize: _isfollowingselected ? 18 : 14,
                    fontWeight: FontWeight.bold,
                    color: _isfollowingselected ? Colors.white : Colors.grey),
              ),
            ),
            Text(
              "  ||  ",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isfollowingselected = false;
                });
              },
              child: Text(
                "For You",
                style: GoogleFonts.poppins(
                    fontSize: !_isfollowingselected ? 18 : 14,
                    fontWeight: FontWeight.bold,
                    color: !_isfollowingselected ? Colors.white : Colors.grey),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_important_sharp,
                size: 30,
                color: Colors.white,
              ))
        ],
        leading: const SizedBox(
          width: 2,
        ),
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                color: Colors.purple,
                child: Center(
                  child: Text("text $index"),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        child: Videodetails(
                          video: videos[index],
                        ),
                      )),
                  Expanded(
                      child: Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: Home_side_bar(
                      video: videos[index],
                    ),
                  ))
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
