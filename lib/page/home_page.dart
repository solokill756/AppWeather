import 'package:appweather/page/wedgets/home_detail_weather.dart';
import 'package:appweather/page/wedgets/home_location.dart';
import 'package:appweather/page/wedgets/home_temperature.dart';
import 'package:appweather/page/wedgets/home_weather_icon.dart';
import 'package:appweather/providers/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<WeatherProvider>().getWeatherCurrent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff1D6CF3),
            Color(0xff19D2FE),
          ],
        )),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeWeatherIcon(),
            HomeTemperature(),
            HomeLocation(),
            SizedBox(height: 20),
            HomeDetailWeather(),
          ],
        ),
      ),
    );
  }
}
