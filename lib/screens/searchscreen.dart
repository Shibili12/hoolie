import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoolie/aasets.dart';

class Searchscreen extends StatelessWidget {
  var songname = [
    "Jeevamshamayi",
    "Ee Kaattu",
    "Parayuvaan",
    "Middle of the night"
  ];
  var singername = [
    "K. S. Harisankar and Shreya Ghoshal",
    "Karthik",
    "Neha Nair and Sid Sriram",
    "Elley Duhé",
  ];
  var songimage = [
    theevandi,
    eekatu,
    parayuvan,
    middle,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.pink,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Search For A Music",
                style: GoogleFonts.openSans(
                  color: Colors.pink,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.pink.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Artists,Songs,etc",
                    hintStyle: GoogleFonts.nunitoSans(),
                    prefixIcon: Icon(
                      Icons.search,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: ((context, index) => ListTile(
                      contentPadding: EdgeInsets.all(8),
                      leading: Container(
                        width: 70,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(songimage[index]))),
                      ),
                      title: Text(
                        songname[index],
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        singername[index],
                        style: GoogleFonts.dmSans(),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
