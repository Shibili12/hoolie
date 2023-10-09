import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoolie/screens/Loginscreen.dart';
import 'package:hoolie/screens/feedbackscreen.dart';
import 'package:hoolie/screens/profilescreen.dart';
import 'package:hoolie/screens/settingsscreen.dart';

class Drawerhome extends StatelessWidget {
  const Drawerhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                "Hooliee",
                style: GoogleFonts.nunito(
                  color: Colors.pink,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.pink,
              ),
              title: Text("Your Profile"),
              trailing: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => Profilescreen())));
                },
                icon: Icon(Icons.arrow_forward_ios, color: Colors.pink),
              )),
          ListTile(
              leading: Icon(
                Icons.feedback,
                color: Colors.pink,
              ),
              title: Text("Feedback"),
              trailing: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => Feedbackscreen())));
                },
                icon: Icon(Icons.arrow_forward_ios, color: Colors.pink),
              )),
          ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.pink,
              ),
              title: Text("settings"),
              trailing: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => Settingsscreen())));
                },
                icon: Icon(Icons.arrow_forward_ios, color: Colors.pink),
              )),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.pink,
            ),
            title: Text("Logout"),
            trailing: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => Loginscreen())));
                },
                icon: Icon(Icons.arrow_forward_ios, color: Colors.pink)),
          ),
        ],
      ),
    );
  }
}
