import 'package:flutter/material.dart';
import 'package:hoolie/aasets.dart';

class Singercard extends StatelessWidget {
  String singerimage;
  String singername;
  String Place;
  Singercard({
    required this.singerimage,
    required this.singername,
    required this.Place,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: Colors.grey,
        ),
      ),
      height: 180,
      width: 100,
      child: Column(
        children: [
          Image.asset(
            singerimage,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            singername,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(Place),
        ],
      ),
    );
  }
}
