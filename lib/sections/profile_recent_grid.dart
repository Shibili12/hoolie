import 'package:flutter/material.dart';
import 'package:hoolie/aasets.dart';

class Profilegrid extends StatelessWidget {
  String songimage;
  String songname;
  Profilegrid({
    required this.songimage,
    required this.songname,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 500,
          width: 130,
          child: Column(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(songimage),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                songname,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )),
    );
  }
}
