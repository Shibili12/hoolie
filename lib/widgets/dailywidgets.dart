import 'package:flutter/material.dart';

class DailyCardwidget extends StatelessWidget {
  String image;
  String slogan;
  String date;

  DailyCardwidget({
    required this.image,
    required this.slogan,
    required this.date,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Text(
              slogan,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 10,
            child: Text(
              date,
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Positioned(
            bottom: 15,
            left: 10,
            child: Text(
              "Play Random",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 15,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.play_arrow),
            ),
          ),
        ],
      ),
    );
  }
}
