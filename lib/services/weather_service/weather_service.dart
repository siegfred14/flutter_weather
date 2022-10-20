import 'dart:convert' as JSON;
import 'package:cfrd_temp_app/services/api_helper.dart';
import 'package:http/http.dart' as http;
import '../../models/weather_model.dart';
import '../../utils/key_const.dart';
import '../endpoints.dart';

class WeatherService {
  WeatherModel? weatherModel;

  Future<WeatherModel> getWeatherDetails({String? cityName}) async {
    var response = await http.get(
        Uri.parse(
          Endpoints.weatherAPI(cityName: cityName, appID: AppConst.weatherAPI),
        ),
        headers: APIHelper().requestHeaders);
    var jsonData = JSON.jsonDecode(response.body);

    weatherModel = WeatherModel.fromJson(jsonData!);
    return weatherModel!;
  }
}
