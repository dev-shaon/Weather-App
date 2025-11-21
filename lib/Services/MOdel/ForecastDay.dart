class ForecastDay {
  final String date;
  final double maxTemp;
  final double minTemp;
  final String condition;

  ForecastDay({
    required this.date,
    required this.maxTemp,
    required this.minTemp,
    required this.condition,
  });

  factory ForecastDay.fromJson(Map<String, dynamic> json) {
    return ForecastDay(
      date: json['date'] ?? '',
      maxTemp: (json['day']['maxtemp_c'] ?? 0).toDouble(),
      minTemp: (json['day']['mintemp_c'] ?? 0).toDouble(),
      condition: json['day']['condition']['text'] ?? '',
    );
  }
}