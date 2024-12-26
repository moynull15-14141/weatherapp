import 'package:flutter/material.dart';
import 'package:weatherapp/Homepage.dart';

class Weatherapp extends StatelessWidget {
  const Weatherapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wearther App',
      home: Homepage(),
    );
  }
}
