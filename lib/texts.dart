import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textsui extends StatelessWidget {
  String heading;
  Textsui({
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
