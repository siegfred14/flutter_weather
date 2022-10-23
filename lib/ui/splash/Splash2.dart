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
          color: Color(0xffFFFFFF),
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
            const SizedBox(
              height: 110,
            ),
            const Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  // alignment: ui.PlaceholderAlignment.middle,
                  TextSpan(text: "Let's see \nThe"),
                  WidgetSpan(
                      child: Icon(
                    Icons.star_half_outlined,
                    color: Color.fromARGB(255, 211, 190, 6),
                    size: 42,
                  )),
                  TextSpan(text: '\nWeather\nAround you'),
                ],
              ),
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 45,
                color: Color(0xff0C1823),
                fontFamily: 'poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
