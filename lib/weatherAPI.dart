import 'package:http/http.dart' as http;

class WeatherApi {
  final String baseUrl = "http://api.weatherapi.com/v1//current.json";
  final String apikey = "1c9ef016c9804e0d86281638242612";

  getCurrentWeather(String location) async {
    String apiUrl = "$baseUrl?key=$apikey&q=$location";
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        print(response.body);
      } else {
        throw Exception("failed to load data");
      }
    } catch (e) {
      throw Exception("failed to load data");
    }
  }
}
