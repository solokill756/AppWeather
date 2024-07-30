import 'package:appweather/apps/config/theme_custom.dart';
import 'package:appweather/page/bottom_navigation_custom/bottom_custom.dart';
import 'package:appweather/page/home/home_page.dart';
import 'package:appweather/providers/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WeatherProvider(),
      child: MaterialApp(
        theme: ThemeCustom.themeLight,
        debugShowCheckedModeBanner: false,
        home: const BottomNavigationCustom(),
      ),
    );
  }
}
