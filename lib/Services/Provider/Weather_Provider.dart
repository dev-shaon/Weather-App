import 'package:flutter/material.dart';
import 'WeatherService.dart';
import 'Weather_modle.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherService _services = WeatherService();
  WeatherService get service => _services;

  WeatherModel? weather;
  bool isLoading = false;

  // 🔹 7 দিনের forecast রাখার জন্য
  List<dynamic> forecastDays = [];

  Future<void> getWeather(String city) async {
    isLoading = true;
    notifyListeners();

    try {
      weather = await service.fetchWeather(city);

      // 🔹 forecast data
      forecastDays = weather?.forecastDays ?? [];
    } catch (e) {
      debugPrint("Error fetching weather: $e");
    }

    isLoading = false;
    notifyListeners();
  }
}
