import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/Services/Weather_modle.dart';

class WeatherService {

  // 🔹 7 দিনের forecast সহ fetch
  Future<WeatherModel> fetchWeather(String city) async {
    final url =
        "https://api.weatherapi.com/v1/forecast.json?key=72e7e4f689134be0b3640336252309&q=$city&days=7&aqi=no&alerts=no";
    final uri = Uri.parse(url);

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return WeatherModel.fromJson(jsonData);
    } else {
      throw Exception("Failed to load weather");
    }
  }
}
