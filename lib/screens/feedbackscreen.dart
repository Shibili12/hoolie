import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoolie/sections/bottomnavigation.dart';

class Feedbackscreen extends StatelessWidget {
  const Feedbackscreen({super.key});

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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Feedback",
                style: GoogleFonts.openSans(
                  color: Colors.pink,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                style: TextStyle(color: Colors.black),
                maxLines: 10,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  filled: true,
                  fillColor: Colors.pink.shade50,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Enter your valuable feedback here.......",
                  hintStyle: GoogleFonts.nunitoSans(),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Bottomnavigation()));
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
