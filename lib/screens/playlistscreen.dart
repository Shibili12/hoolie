import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoolie/sections/bottomnavigation.dart';
import 'package:hoolie/sections/followplaylist.dart';
import 'package:hoolie/sections/playlistsongsection.dart';

class Playlistscreen extends StatelessWidget {
  const Playlistscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.play_arrow_rounded),
          backgroundColor: Colors.pink,
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "My Playlist",
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.ios_share_rounded),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.elliptical(400, 100)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/playlist.jpg"),
              ),
            ),
          ),
          bottom: PreferredSize(
            child: SizedBox(),
            preferredSize: Size.fromHeight(180),
          ),
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.elliptical(400, 100))),
        ),
        body: ListView(
          children: [
            Followplaylist(),
            Playlistsongs(),
          ],
        ));
  }
}
