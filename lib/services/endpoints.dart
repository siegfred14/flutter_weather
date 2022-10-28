class Endpoints {
  static String weatherAPI({String? location, String? appID}) =>
      'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$appID&units=metric';
}
