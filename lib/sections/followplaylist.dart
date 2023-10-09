import 'package:flutter/material.dart';

class Followplaylist extends StatelessWidget {
  const Followplaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 20,
          ),
          Text(
            "0 followers",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "10 Songs",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shuffle,
              color: Colors.pink,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.restart_alt,
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
