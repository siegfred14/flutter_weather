import 'package:cfrd_temp_app/services/weather_service/weather_service.dart';
import 'package:flutter/cupertino.dart';

import '../../utils/locator_setup.dart';

class Home extends ChangeNotifier {
  final weatherService = serviceLocator<WeatherService>();

  String cityName = 'Quebec';

  void init() {}
}
