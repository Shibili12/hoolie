import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hoolie/screens/searchscreen.dart';

import 'package:hoolie/sections/dailycardsection.dart';
import 'package:hoolie/sections/drawerhome.dart';
import 'package:hoolie/sections/recentsection.dart';
import 'package:hoolie/sections/singersection.dart';
import 'package:hoolie/texts.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Bottomnavigation(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black, size: 30),
        elevation: 0,
        backgroundColor: Colors.white,
        // leading: IconButton(
        //   onPressed: () => Drawerhome(),
        //   icon: Icon(
        //     Icons.menu,
        //     size: 30,
        //   ),
        //   color: Colors.black,
        // ),
        title: Center(
          child: Text(
            "Hooliee",
            style: GoogleFonts.nunito(
              color: Colors.pink[800],
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => Searchscreen())));
            },
            icon: Icon(
              Icons.search_rounded,
              color: Colors.black,
              size: 30,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: Drawerhome(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Dailycardview(),
            SizedBox(
              height: 20,
            ),
            Textsui(
              heading: "Last Musics",
            ),
            SizedBox(
              height: 20,
            ),
            Singersection(),
            SizedBox(
              height: 20,
            ),
            Textsui(heading: "Recently Played"),
            // SizedBox(
            //   height: 20,
            // ),
            Recentsection(),
          ],
        ),
      ),
    );
  }
}
