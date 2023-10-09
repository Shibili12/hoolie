import 'package:flutter/material.dart';
import 'package:hoolie/aasets.dart';
import 'package:hoolie/widgets/recenttile.dart';

class Recentsection extends StatelessWidget {
  const Recentsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: ListView(
        children: [
          Divider(),
          Recenttile(
            singerimage: arjitsing,
            songname: "Phir Aur Kya Chahiye",
            singer: "Arijit Singh",
          ),
          Divider(),
          Recenttile(
            singerimage: hanansha,
            songname: "Edhuvo Ondru",
            singer: "Hanan Shah",
          ),
          Divider(),
          Recenttile(
            singerimage: alanwalker,
            songname: "Faded",
            singer: "Alan Walker",
          ),
          Divider(),
          Recenttile(
            singerimage: sushinshyam,
            songname: "Uyiril Thodum",
            singer: "Sushin Shyam",
          ),
          Divider(),
          Recenttile(
            singerimage: arrahman,
            songname: "Param Sundari",
            singer: "A. R. Rahman",
          ),
        ],
      ),
    );
  }
}
