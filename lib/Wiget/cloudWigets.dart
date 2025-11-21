import 'package:flutter/material.dart';

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
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Tue",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("⛅ Rainy",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("+14°",style: TextStyle(color: Colors.white,fontSize: 18),),
          Text("32km/h",style: TextStyle(color: Colors.white,fontSize: 18),),
        ],),
        SizedBox(height: 17,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Sat",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("🌧️ Rainy",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("+14°",style: TextStyle(color: Colors.white,fontSize: 18),),
          Text("32km/h",style: TextStyle(color: Colors.white,fontSize: 18),),
        ],),
        SizedBox(height: 17,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Sun",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("🌧️ Rainy",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("+14°",style: TextStyle(color: Colors.white,fontSize: 18),),
          Text("10km/h",style: TextStyle(color: Colors.white,fontSize: 18),),
        ],),
        SizedBox(height: 17,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Mon",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("☁️ Rainy",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("+24°",style: TextStyle(color: Colors.white,fontSize: 18),),
          Text("12km/h",style: TextStyle(color: Colors.white,fontSize: 18),),
        ],),
        SizedBox(height: 17,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Tue",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("⚡Thunder",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("+27°",style: TextStyle(color: Colors.white,fontSize: 18),),
          Text("22km/h",style: TextStyle(color: Colors.white,fontSize: 18),),
        ],),
        SizedBox(height: 17,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Wed",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("☀️ Snow",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("+30°",style: TextStyle(color: Colors.white,fontSize: 18),),
          Text("32km/h",style: TextStyle(color: Colors.white,fontSize: 18),),
        ],),
        SizedBox(height: 17,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("fri",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("🌤️ Sunny",style: TextStyle(color: Colors.grey,fontSize: 18),),
          Text("+33°",style: TextStyle(color: Colors.white,fontSize: 18),),
          Text("32km/h",style: TextStyle(color: Colors.white,fontSize: 18),),
        ],),
        SizedBox(height: 17,),
      ],
    );
  }
}

