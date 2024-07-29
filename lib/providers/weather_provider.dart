import 'package:appweather/models/weather.dart';
import 'package:appweather/repositories/api_repositories.dart';
import 'package:flutter/material.dart';

class WeatherProvider extends ChangeNotifier {
  Future<WeatherData> getWeatherCurrent() async {
    WeatherData result = await ApiRepositories.callApiGetWeather();
    return result;
  }
}
