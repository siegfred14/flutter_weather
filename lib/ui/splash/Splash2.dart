import 'package:flutter/material.dart';

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // width: double.infinity,
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xffE5E5E5),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/ccn_flutter_splash2_1.png',
                    width: 158,
                    height: 137,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
