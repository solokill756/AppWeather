import 'package:appweather/apps/utils/const.dart';
import 'package:flutter/material.dart';

class HomeWeatherIcon extends StatelessWidget {
  const HomeWeatherIcon({super.key, required this.imgIcon});
  final String imgIcon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width / 1.5,
      padding: const EdgeInsets.all(20.0),
      child: Image.asset(
        AssetCustom.getLinkImg(imgIcon),
        fit: BoxFit.cover,
      ),
    );
  }
}
