import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Services/Provider/Weather_Provider.dart';

class CloudWidgets extends StatelessWidget {
  const CloudWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Image(image: AssetImage("assets/images/weatherOne.png"),height: 50,),
            Text("4:00 AM",style: TextStyle(color: Colors.white,fontSize: 10),),
            Text("36°",style: TextStyle(color: Colors.white,fontSize: 20),),
        ],),
        Column(
          children: [
            Image(image: AssetImage("assets/images/weatherOne.png"),height: 50,),
            Text("5:00 AM",style: TextStyle(color: Colors.white,fontSize: 10),),
            Text("28°",style: TextStyle(color: Colors.white ,fontSize: 20),),
        ],),
        Column(
          children: [
            Image(image: AssetImage("assets/images/weatherOne.png"),height: 50,),
            Text("2:00 AM",style: TextStyle(color: Colors.white,fontSize: 10),),
            Text("16°",style: TextStyle(color: Colors.white,fontSize: 20),),
        ],),
        Column(
          children: [
            Image(image: AssetImage("assets/images/weatherOne.png"),height: 50,),
            Text("6:00 AM",style: TextStyle(color: Colors.white,fontSize: 10),),
            Text("30°",style: TextStyle(color: Colors.white,fontSize: 20),),
        ],),
        Column(
          children: [
            Image(image: AssetImage("assets/images/weatherOne.png"),height: 50,),
            Text("2:00 AM",style: TextStyle(color: Colors.white,fontSize: 10),),
            Text("36°",style: TextStyle(color: Colors.white,fontSize: 20),),
        ],)
      ],
    );
  }
}

class WeeklyData extends StatelessWidget {
  const WeeklyData({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<WeatherProvider>(context);

    if (provider.forecastDays.isEmpty) {
      return const Center(
        child: Text("No forecast data", style: TextStyle(color: Colors.white)),
      );
    }

    return ListView.builder(
      itemCount: provider.forecastDays.length,
      itemBuilder: (context, index) {
        final day = provider.forecastDays[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(day.date, style: const TextStyle(color: Colors.grey, fontSize: 18)),
              Text(day.condition, style: const TextStyle(color: Colors.grey, fontSize: 18)),
              Text("${day.maxTemp.toStringAsFixed(0)}°", style: const TextStyle(color: Colors.white, fontSize: 18)),
              Text("22km/h", style: const TextStyle(color: Colors.white, fontSize: 18)),
            ],
          ),
        );
      },
    );
  }
}

