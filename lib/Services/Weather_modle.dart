class WeatherModel {
  final String city;
  final String localtime;
  final double tempC;
  final double windMph;
  final int humidity;
  final String condition;
  final List<dynamic>? forecastDays; 

  WeatherModel({
    required this.city,
    required this.localtime,
    required this.tempC,
    required this.windMph,
    required this.humidity,
    required this.condition,
    this.forecastDays,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      city: json['location']['name'] ?? '',
      localtime: json['location']['localtime'] ?? '',
      tempC: (json['current']['temp_c'] ?? 0).toDouble(),
      windMph: (json['current']['wind_mph'] ?? 0).toDouble(),
      humidity: json['current']['humidity'] ?? 0,
      condition: json['current']['condition']['text'] ?? '',
      forecastDays: json['forecast'] != null
          ? json['forecast']['forecastday'] as List<dynamic>
          : [],
    );
  }
}
