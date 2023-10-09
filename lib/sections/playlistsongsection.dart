import 'package:flutter/material.dart';

class Playlistsongs extends StatelessWidget {
  var songname = [
    "Jeevamshamayi",
    "Ee Kaattu",
    "Parayuvaan",
  ];
  var singername = [
    "K. S. Harisankar and Shreya Ghoshal",
    "Karthik",
    "Neha Nair and Sid Sriram",
  ];
  var songimage = [
    "assets/images/theevandisong.jpeg",
    "assets/images/eekatu.jpeg",
    "assets/images/parayuvan.jpeg",
  ];
  var time = [
    "5:23",
    "5:29",
    "4:37",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView(
        children: List.generate(
            3,
            (index) => ListTile(
                  leading: Container(
                    height: 150,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(songimage[index])),
                    ),
                  ),
                  title: Text(
                    songname[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(singername[index]),
                  trailing: Text(time[index]),
                )),
      ),
    );
  }
}
