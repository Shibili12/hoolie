import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoolie/aasets.dart';
import 'package:hoolie/sections/favouritecard.dart';

class Favoritescreen extends StatelessWidget {
  const Favoritescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "favourites",
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.bold,
            color: Colors.pink,
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Favouritecard(
              songimage: theevandi,
              songname: "Jeevamshamayi",
              singername: "K S Harishankar&Shreya goshal",
            ),
            SizedBox(
              height: 20,
            ),
            Favouritecard(
              songimage: parayuvan,
              songname: "Parayuvaan",
              singername: "Neha nair and Sid siram",
            ),
            SizedBox(
              height: 20,
            ),
            Favouritecard(
              songimage: middle,
              songname: "Middle of the Night",
              singername: "Elley Duhé",
            ),
          ],
        ),
      ),
    );
  }
}
