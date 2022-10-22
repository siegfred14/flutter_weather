import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0c1823),
        body: Center(
          child: Image.asset('assets/images/ccn_flutter_splash.png'),
        ));
  }
}
