import 'package:flutter/material.dart';
import 'package:hoolie/aasets.dart';

class Favouritecard extends StatelessWidget {
  String songimage;
  String songname;
  String singername;
  Favouritecard({
    required this.songimage,
    required this.songname,
    required this.singername,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.pink[100],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 0.1,
          )),
      height: 120,
      child: Stack(
        children: [
          Positioned(
            top: 9,
            left: 9,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(songimage),
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 130,
            child: Text(
              songname,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 130,
            child: Text(singername),
          ),
          Positioned(
            top: 37,
            right: 20,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                )),
          )
        ],
      ),
    );
  }
}
