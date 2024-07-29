import 'package:appweather/models/weather.dart';
import 'package:appweather/page/home/wedgets/home_detail_weather.dart';
import 'package:appweather/page/home/wedgets/home_location.dart';
import 'package:appweather/page/home/wedgets/home_temperature.dart';
import 'package:appweather/page/home/wedgets/home_weather_icon.dart';
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
        child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherCurrent(),
          initialData: null,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (!snapshot.hasData) {
              return Container(
                child: const Text("has no data"),
              );
            } else {
              WeatherData data = snapshot.data as WeatherData;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeWeatherIcon(imgIcon: data.weather[0].main),
                  HomeTemperature(
                    temp: data.main.temp.round().toString(),
                  ),
                  HomeLocation(
                    location: data.name,
                  ),
                  SizedBox(height: 20),
                  HomeDetailWeather(
                    speed: data.wind.speed,
                    humidity: data.main.humidity,
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
