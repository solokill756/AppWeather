import 'package:appweather/models/weather.dart';
import 'package:dio/dio.dart';

class ApiRepositories {
  static Future<void> callApiGetWeather() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=10,77585&lon=106,75467&appid=7f47140bb0aab531088f5aa9069d18c0');
      final data = res.data;
      WeatherData result = WeatherData.fromMap(data);
    } catch (e) {
      print(e);
    }
  }
}
