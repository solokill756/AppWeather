import 'package:flutter/material.dart';

class HomeDetailWeather extends StatelessWidget {
  const HomeDetailWeather(
      {super.key, required this.speed, required this.humidity});
  final num speed;
  final num humidity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/img/icons/Vector1.png',
              width: 49,
              height: 49,
            ),
            Text(
              '${speed.round().toString()}km/h',
              style: TextStyle(
                fontSize: 21,
                color: Colors.white,
              ),
            )
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/img/icons/humidity.png',
              width: 49,
              height: 49,
            ),
            Text(
              '${humidity.round().toString()}%',
              style: TextStyle(
                fontSize: 21,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}
