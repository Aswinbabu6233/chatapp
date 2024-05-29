import 'package:chatapp/Screens/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class splasScreen extends StatefulWidget {
  @override
  State<splasScreen> createState() => _splasScreenState();
}

class _splasScreenState extends State<splasScreen> {
  PageController _pageController = PageController();

  bool onlastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  onlastpage = (index == 2);
                });
              },
              children: [
                OnBoardingScreen(
                  heading: 'Connect',
                  subheading: ' with the right people',
                  animation: 'assets/animation/splash3.json',
                ),
                OnBoardingScreen(
                  heading: 'Post',
                  subheading: ' your best moments',
                  animation: 'assets/animation/splash2.json',
                ),
                OnBoardingScreen(
                  heading: 'Lets',
                  subheading: ' chat with others',
                  animation: 'assets/animation/splash1.json',
                ),
              ]),
          Container(
              alignment: const Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _pageController.jumpToPage(2);
                    },
                    child: Text(
                      "Skip",
                      style: GoogleFonts.sansita(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[800]),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                  ),
                  onlastpage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return loginpage();
                              },
                            ));
                          },
                          child: Text(
                            "Done",
                            style: GoogleFonts.sansita(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange[800]),
                          ))
                      : GestureDetector(
                          onTap: () {
                            _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            "Next",
                            style: GoogleFonts.sansita(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange[800]),
                          ),
                        ),
                ],
              )),
        ],
      ),
    );
  }
}

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen(
      {super.key,
      required this.heading,
      required this.subheading,
      required this.animation});
  final String heading;

  final String subheading;
  final String animation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/Gossiplogo bg removed.png",
            width: 200,
          ),
          Container(
            width: 250,
            margin: EdgeInsets.only(left: 30),
            child: RichText(
                text: TextSpan(
                    style: GoogleFonts.sansita(fontSize: 30),
                    children: [
                  TextSpan(
                      text: heading,
                      style: GoogleFonts.sansita(
                          color: Color.fromARGB(255, 228, 75, 5))),
                  TextSpan(
                      text: subheading, style: TextStyle(color: Colors.black))
                ])),
          ),
          Container(
            height: 450,
            child: Lottie.asset(animation),
          ),
        ],
      ),
    );
  }
}
