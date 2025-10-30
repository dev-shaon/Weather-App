class Weather {
  final String city;
  final double temp;
  final String description;
  final int humidity;
  final double wind;

  Weather({
    required this.city,
    required this.temp,
    required this.description,
    required this.humidity,
    required this.wind,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      city: json['name'],
      temp: json['main']['temp'].toDouble(),
      description: json['weather'][0]['description'],
      humidity: json['main']['humidity'],
      wind: json['wind']['speed'].toDouble(),
    );
  }
}