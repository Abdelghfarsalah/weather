import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/weathermodel.dart';

class weatherservice {
  String baseUrl = "http://api.weatherapi.com/v1";
  String Apikey = "9d5be16edc7b4d9eb0c92344230307";
  Future<weathermodel?> getweathre({required String cityname}) async {
    weathermodel? weatherday;
    try {
      Uri url =
          Uri.parse("$baseUrl/forecast.json?key=$Apikey&q=$cityname&days=2");
      http.Response response = await http.get(url);
      Map<String, dynamic> data = jsonDecode(response.body);
      weatherday = weathermodel.fromJson(data);
    } catch (e) {
      print(e);
    }
    return weatherday;
  }
}
