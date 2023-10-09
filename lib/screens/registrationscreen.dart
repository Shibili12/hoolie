import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoolie/sections/bottomnavigation.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 17,
              top: 17,
              right: 17,
              bottom: 5,
            ),
            child: Text(
              "Register for Musical Magic",
              style: GoogleFonts.nunito(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(
          //     left: 17,
          //     bottom: 10,
          //     right: 17,
          //   ),
          //   child: Text(
          //     "Music gives a soul to the universe, wings to the mind, flight to the imagination, and life to everything.",
          //     style: GoogleFonts.nunitoSans(),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(9),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.shade50,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: "Fullname",
                hintStyle: GoogleFonts.nunitoSans(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.shade50,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: "Username",
                hintStyle: GoogleFonts.nunitoSans(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.shade50,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: "Email ID",
                hintStyle: GoogleFonts.nunitoSans(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.shade50,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: "Password",
                hintStyle: GoogleFonts.nunitoSans(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink.shade50,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: "Re-enter Password",
                hintStyle: GoogleFonts.nunitoSans(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(385, 50),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => Bottomnavigation())));
              },
              child: Text("Register"),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Already have an account? Sign in",
              style: GoogleFonts.nunitoSans(color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}
