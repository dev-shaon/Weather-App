import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Screen/Home_Screen.dart';
import 'package:weather_app/Services/Provider/Weather_Provider.dart';

void main() {
  runApp( WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WeatherProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
