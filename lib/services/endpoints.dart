class Endpoints {
  static String weatherAPI({String? cityName, String? appID}) =>
      'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$appID&units=metric';
}
