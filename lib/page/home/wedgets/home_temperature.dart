import 'package:appweather/apps/utils/const.dart';
import 'package:flutter/material.dart';

class HomeTemperature extends StatelessWidget {
  const HomeTemperature({super.key, required this.temp});
  final String temp;
  @override
  Widget build(BuildContext context) {
    return createtemp(temp);
  }
}
