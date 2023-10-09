import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoolie/aasets.dart';
import 'package:hoolie/screens/homescreen.dart';
import 'package:hoolie/sections/bottomnavigation.dart';
import 'package:hoolie/sections/profile_recent_grid.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 5,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => Bottomnavigation())));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.pink,
              ),
            ),
          ),
          Positioned(
            top: 130,
            right: 130,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              backgroundImage: AssetImage(singer1),
            ),
          ),
          Positioned(
            top: 280,
            right: 138,
            child: Text(
              "Michael",
              style: GoogleFonts.dmSans(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 350,
            child: Container(
              height: 50,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "0 \n following",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.pink),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "0 \n playlist",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.pink),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "0 \n followers",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.pink),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 420,
            left: 5,
            child: Text(
              "Recently Played",
              style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 5,
            child: Profilegrid(
              songimage: parayuvan,
              songname: "Parayuvan",
            ),
          ),
          Positioned(
            top: 450,
            left: 135,
            child: Profilegrid(
              songimage: middle,
              songname: "Middle of the night",
            ),
          ),
          Positioned(
            top: 450,
            left: 265,
            child: Profilegrid(
              songimage: khuda,
              songname: "O Khuda",
            ),
          ),
          // Positioned(
          //   top: 450,
          //   left: 5,
          //   child: Profilegrid(
          //     songimage: parayuvan,
          //     songname: "Parayuvan",
          //   ),
          // ),
          // Positioned(
          //   top: 450,
          //   left: 135,
          //   child: Profilegrid(
          //     songimage: parayuvan,
          //     songname: "Parayuvan",
          //   ),
          // ),
          // Positioned(
          //   top: 620,
          //   left: 265,
          //   child: Profilegrid(
          //     songimage: parayuvan,
          //     songname: "Parayuvan",
          //   ),
          // ),
        ],
      ),
    );
  }
}
