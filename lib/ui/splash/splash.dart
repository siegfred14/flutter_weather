import 'dart:async';
import 'package:cfrd_temp_app/ui/splash/splash2.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: ((context) => Splash2())),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c1823),
      body: Center(
        child: Image.asset('assets/images/ccn_flutter_splash.png'),
      ),
      // Add Bottom Nav Bar
      // Text(
      //         "cfrd meteorology",
      //         style: TextStyle(color: Color.fromARGB(255, 65, 156, 23)),
      //       )
    );
  }
}
