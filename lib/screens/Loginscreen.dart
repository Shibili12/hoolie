import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoolie/screens/registrationscreen.dart';
import 'package:hoolie/sections/bottomnavigation.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset("assets/images/hooliemusic.png"),
            SizedBox(
              height: 200,
            ),
            Text(
              "Get ready for Hoolie",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.pink,
              ),
            ),
            Text(
              "Your Gateway to Harmonious Moments",
              style: GoogleFonts.nunitoSans(),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink.shade50,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Username or Email",
                  hintStyle: GoogleFonts.nunitoSans(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 17,
                right: 17,
              ),
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
              padding: const EdgeInsets.all(17.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(370, 50),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => Bottomnavigation())));
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => Registration())));
                },
                child: Text(
                  "Don't Have an account?register here",
                  style: GoogleFonts.nunitoSans(color: Colors.grey),
                ))
          ],
        ),
      ),
    );
  }
}
