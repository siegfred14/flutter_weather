import 'package:cfrd_temp_app/ui/home/home.dart';
import 'package:cfrd_temp_app/utils/locator_setup.dart';
import 'package:cfrd_temp_app/utils/provider_setup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  locatorSetup();

  runApp(MultiProvider(providers: providers, child: const MyApp()));
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cfrd Meteorology',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        backgroundColor: const Color(0xffFFFFFF),
        dividerColor: Colors.white54,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: Material(
        child: Builder(builder: (BuildContext context) => Home()),
      ),
    );
  }
}
