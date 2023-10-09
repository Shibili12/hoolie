import 'package:flutter/material.dart';
import 'package:hoolie/aasets.dart';
import 'package:hoolie/widgets/singercardwidget.dart';

class Singersection extends StatelessWidget {
  const Singersection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Singercard(
            singerimage: hanansha,
            singername: "Hanan Shah",
            Place: "Kerala,India",
          ),
          SizedBox(
            width: 20,
          ),
          Singercard(
            singerimage: arjitsing,
            singername: "Arijit Singh",
            Place: "India",
          ),
          SizedBox(
            width: 20,
          ),
          Singercard(
            singerimage: alanwalker,
            singername: "Alan Walker",
            Place: "Norway",
          ),
          SizedBox(
            width: 20,
          ),
          Singercard(
            singerimage: sushinshyam,
            singername: "Sushin Shyam",
            Place: "Kerala,India",
          ),
          SizedBox(
            width: 20,
          ),
          Singercard(
            singerimage: arrahman,
            singername: "A R Rahman",
            Place: "India",
          ),
        ],
      ),
    );
  }
}
