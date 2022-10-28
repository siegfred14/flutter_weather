import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class DropdownScreen extends StatefulWidget {
  // const DropdownScreen({Key? key}) : super(key: key);

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  String url =
      "https://github.com/dr5hn/countries-states-cities-database/blob/master/cities.json";

  // var _countries = [];
  var _cities = [];

  // String? country;
  String? city;

  bool isCitySelected = false;

  Future getWorldData() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);

      setState(() {
        _cities = jsonResponse;
      });

      print("$_cities");
    }
  }

  @override
  void initState() {
    getWorldData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButton<String>(
              icon: const Icon(Icons.keyboard_arrow_down),
              items: _cities.map((city) {
                return DropdownMenuItem<String>(
                    value: city["name"], child: Text(city["name"]));
              }).toList(),
              value: city,
              onChanged: (value) {
                setState(() {
                  // _countries = [];
                  city = value!;
                  // for (var i = 0; i < _cities.length; i++) {
                  //   if (_cities[i]["name"] == value) {
                  //     _countries = _cities[i]["countries"];
                  //   }
                  // }
                });
              })
        ],
      ),
    );
  }
}
