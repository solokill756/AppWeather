import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:appweather/models/weather.dart';
import 'package:appweather/page/detail/weigets/detail_body.dart';
import 'package:appweather/providers/weather_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff1D6CF3),
            Color(0xff19D2FE),
          ],
        ),
      ),
      child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherDetailCurrent(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasData == false) {
              return Container(
                child: Text('has no data'),
              );
            } else {
              List<WeatherDetail> listWeather =
                  snapshot.data as List<WeatherDetail>;
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  centerTitle: false,
                  title: Row(
                    children: [
                      Icon(CupertinoIcons.location),
                      SizedBox(
                        width: 15,
                      ),
                      AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText('Dong Ha',
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              speed: Duration(milliseconds: 100)),
                        ],
                      ),
                    ],
                  ),
                  actions: const [
                    Icon(CupertinoIcons.search),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                body: DetailBody(
                  listData: listWeather,
                ),
              );
            }
          }),
    );
  }
}
