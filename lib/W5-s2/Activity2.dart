import 'package:flutter/material.dart';

enum WeatherCondition { sunny, rainy, cloudy, snowy }
enum DayOfWeek { mon, tue, wed, thu, fri, sat, sun }

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WeatherForecast(WeatherCondition.sunny, 15, -3, DayOfWeek.sun),
            WeatherForecast(WeatherCondition.sunny, 12, 7, DayOfWeek.mon),
            WeatherForecast(WeatherCondition.rainy, 9, 7, DayOfWeek.tue),
            WeatherForecast(WeatherCondition.rainy, 8, -1, DayOfWeek.wed),
            WeatherForecast(WeatherCondition.snowy, 5, -2, DayOfWeek.thu),
            WeatherForecast(WeatherCondition.cloudy, 4, -4, DayOfWeek.fri),
            WeatherForecast(WeatherCondition.sunny, 3, -3, DayOfWeek.sat),
          ],
        ),
      ),
    ),
  ));
}

class WeatherForecast extends StatelessWidget {
  final WeatherCondition weatherCondition;
  final int maxTemp, minTemp;
  final DayOfWeek dayOfWeek;

  const WeatherForecast(this.weatherCondition, this.maxTemp, this.minTemp, this.dayOfWeek, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(day(), style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Icon(icon(), size: 40),
            const SizedBox(height: 8),
            Text('$maxTemp° / $minTemp°', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  String day() => dayOfWeek.toString().split('.').last.substring(0, 3).toUpperCase(); // Simplified day conversion

  IconData icon() {
    switch (weatherCondition) {
      case WeatherCondition.sunny:
        return Icons.wb_sunny;
      case WeatherCondition.rainy:
        return Icons.grain;
      case WeatherCondition.cloudy:
        return Icons.cloud;
      case WeatherCondition.snowy:
        return Icons.ac_unit;
      default:
        return Icons.help_outline;
    }
  }
}