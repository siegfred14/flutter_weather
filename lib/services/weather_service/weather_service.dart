import 'dart:convert' as JSON;
import 'package:http/http.dart' as http;
import '../../models/weather_model.dart';
import '../endpoints.dart';

class WeatherService {
  WeatherModel? weatherModel;

  Future<WeatherModel> getWeatherDetails({String? cityName}) async {
    var response =
        http.get(Uri.parse(Endpoints.weatherAPI(cityName: cityName)));
  }
}
