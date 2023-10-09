import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hoolie/screens/favoritescreen.dart';
import 'package:hoolie/screens/homescreen.dart';
import 'package:hoolie/screens/playlistscreen.dart';
import 'package:hoolie/screens/profilescreen.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int index = 0;
  final screens = [
    Homescreen(),
    Favoritescreen(),
    Playlistscreen(),
    Profilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: GNav(
            selectedIndex: index,
            onTabChange: (index) => setState(() => this.index = index),
            color: Colors.pink[700],
            activeColor: Colors.white,
            tabBackgroundColor: Colors.pink,
            padding: EdgeInsets.all(16),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.favorite,
                text: "Likes",
              ),
              GButton(
                icon: Icons.queue_music_outlined,
                text: "Playlist",
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
