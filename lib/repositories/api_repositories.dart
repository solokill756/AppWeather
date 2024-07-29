import 'package:appweather/apps/utils/const.dart';
import 'package:appweather/models/weather.dart';
import 'package:dio/dio.dart';

class ApiRepositories {
  static Future<WeatherData> callApiGetWeather() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=16.8166&lon=107.1003&units=metric&appid=${MyKey.key_token}');
      final data = res.data;
      WeatherData result = WeatherData.fromMap(data);
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
