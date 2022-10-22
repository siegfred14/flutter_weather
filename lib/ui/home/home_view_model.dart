import 'package:cfrd_temp_app/services/weather_service/weather_service.dart';
import 'package:flutter/cupertino.dart';

import '../../models/weather_model.dart';
import '../../utils/locator_setup.dart';

class HomeViewModel extends ChangeNotifier {
  final weatherService = serviceLocator<WeatherService>();

  String cityName = 'Quebec';

  WeatherModel? weatherModel;

  bool? isLoading = false;

  Future<void> init() async {
    setIsLoading(v: true);
    await weatherService.getWeatherDetails(cityName: cityName).then((value) {
      weatherModel = value;
      setIsLoading(v: false);
      // notifyListeners();
    });
  }

  void setIsLoading({bool? v}) => isLoading = v;
}
