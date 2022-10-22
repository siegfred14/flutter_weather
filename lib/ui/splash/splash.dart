import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0C1823),
        body: Center(
          child: Container(
            child: const Text('Cfrd Meteorology',
                style: TextStyle(
                    fontSize: 27.4,
                    color: Color(0xffFFFFFF),
                    fontFamily: "Syncopate",
                    fontWeight: FontWeight.w700)),
          ),
        ));
  }
}
