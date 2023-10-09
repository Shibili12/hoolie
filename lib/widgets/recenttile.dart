import 'package:flutter/material.dart';

class Recenttile extends StatelessWidget {
  String singerimage;
  String songname;
  String singer;
  Recenttile({
    required this.singerimage,
    required this.songname,
    required this.singer,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(singerimage),
      ),
      title: Text(
        songname,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(singer),
      trailing: Icon(
        Icons.pause_circle_outline,
        color: Colors.pink[700],
      ),
    );
  }
}
