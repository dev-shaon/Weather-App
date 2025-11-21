import 'package:flutter/material.dart';
import 'package:weather_app/Services/MOdel/ForecastDay.dart';
import 'package:weather_app/Services/MOdel/Weather_modle.dart';
import 'package:weather_app/Services/Service/WeatherService.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherService _services = WeatherService();
  WeatherService get service => _services;

  WeatherModel? weather;
  bool isLoading = false;

  List<ForecastDay> forecastDays = [];

  Future<void> getWeather(String city) async {
    isLoading = true;
    notifyListeners();

    try {
      weather = await service.fetchWeather(city);

      forecastDays = weather?.forecastDays ?? [];
    } catch (e) {
      debugPrint(" Error fetching weather: $e");
    }

    isLoading = false;
    notifyListeners();
  }
}
