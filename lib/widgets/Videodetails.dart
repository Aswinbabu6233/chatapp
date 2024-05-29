import 'package:chatapp/models/video.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class Videodetails extends StatelessWidget {
  const Videodetails({Key? key, required this.video}) : super(key: key);
  final Video video;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 15, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _profile("${video.postedBy.profileImageUrl}",
              "${video.postedBy.username}"),
          SizedBox(
            height: 8,
          ),
          ExpandableText(
            video.caption,
            style: GoogleFonts.sansita(
                fontSize: 13, fontWeight: FontWeight.w100, color: Colors.white),
            expandText: "more",
            collapseText: "less",
            expandOnTextTap: true,
            collapseOnTextTap: true,
            maxLines: 2,
            linkColor: Colors.grey,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Icon(
                CupertinoIcons.music_note_2,
                size: 15,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 20,
                width: MediaQuery.of(context).size.width / 2.2,
                child: Marquee(
                  text: "${video.audioName} *  *",
                  velocity: 30,
                  style: GoogleFonts.sansita(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w200),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _profile(String Profileimg, String name) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(Profileimg),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: GoogleFonts.sansita(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          width: 20,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Add Friend ",
              style: GoogleFonts.sansita(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )),
      ],
    );
  }
}
