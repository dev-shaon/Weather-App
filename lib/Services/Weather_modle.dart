class WeatherModel {
  final String city;
  final String localtime;
  final double tempC;
  final double windMph;
  final int humidity;
  final String condition;

  WeatherModel({
    required this.city,
    required this.localtime,
    required this.tempC,
    required this.windMph,
    required this.humidity,
    required this.condition,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      city: json['location']['name'],
      localtime: json['location']['localtime'],
      tempC: (json['current']['temp_c'] as num).toDouble(),
      windMph: (json['current']['wind_mph'] as num).toDouble(),
      humidity: (json['current']['humidity'] as num).toInt(),
      condition: json['current']['condition']['text'],
    );
  }
}
