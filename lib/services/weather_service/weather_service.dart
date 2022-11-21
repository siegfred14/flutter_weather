import 'dart:convert' as JSON;
// import 'dart:developer';
import 'package:cfrd_temp_app/models/weather_model.dart';
// import 'package:cfrd_temp_app/services/api_helper.dart';
import 'package:http/http.dart' as http;
// import '../../utils/key_const.dart';
import '../endpoints.dart';

class WeatherService {
  // WeatherModel? weatherModel;

  Future<WeatherModel> getWeatherDetails({String? location}) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=feef849037b29664ed07d9163f0ce25a&units=metric");
    var response = await http.get(endpoint);

    var body = JSON.jsonDecode(response.body);
    WeatherModel weatherModel = WeatherModel.fromJson(body);

    print(weatherModel.temp);
    // log(body.toString());
    return weatherModel;
    // return WeatherModel.fromJson(body);
  }
}
