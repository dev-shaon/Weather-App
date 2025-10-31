import 'package:flutter/material.dart';
import 'package:weather_app/Services/Weather_modle.dart';

import 'WeatherService.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherService service = WeatherService();

  WeatherModel? weather;
  bool isLoading = false;

  Future<void> getWeather(String city) async {
    isLoading = true;
    notifyListeners();

    try {
      weather = await service.fetchWeather(city);
    } catch (e) {
      debugPrint("Error fetching weather: $e");
    }

    isLoading = false;
    notifyListeners();
  }
}
