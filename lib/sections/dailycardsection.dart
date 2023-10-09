import 'package:flutter/material.dart';
import 'package:hoolie/aasets.dart';
import 'package:hoolie/widgets/dailywidgets.dart';

class Dailycardview extends StatelessWidget {
  const Dailycardview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          DailyCardwidget(
            image: singer1,
            slogan: "Daly Mix For You",
            date: "Satraday,5 August",
          ),
          SizedBox(
            width: 30,
          ),
          DailyCardwidget(
              image: singer2,
              slogan: "My playlist",
              date: "Thursday,10 August"),
          SizedBox(
            width: 30,
          ),
          DailyCardwidget(
              image: singer3,
              slogan: "Discover weekly",
              date: "Tuesday ,15 August")
        ],
      ),
    );
  }
}
