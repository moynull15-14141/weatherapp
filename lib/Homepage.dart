import 'package:flutter/material.dart';
import 'package:weatherapp/weatherAPI.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [_searchwidget()],
        ),
      ),
    ));
  }

  Widget _searchwidget() {
    return SearchBar(
      hintText: "search any city",
      onSubmitted: (value) {
        _getweatherdata(value);
      },
      hintStyle: WidgetStatePropertyAll<TextStyle?>(
        TextStyle(color: Colors.grey),
      ),
    );
  }

  _getweatherdata(String location) async {
    await WeatherApi().getCurrentWeather(location);
  }
}
