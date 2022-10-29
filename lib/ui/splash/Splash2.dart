// import 'package:cfrd_temp_app/ui/home1/home.dart';
import 'package:cfrd_temp_app/ui/home/home1.dart';
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
        decoration: const BoxDecoration(
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
            const SizedBox(
              height: 193,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(47, 0, 0, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(292, 62),
                        primary: const Color(0xff0C1823),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                    child: const Text(
                      "Let's Check",
                      style: TextStyle(
                        color: Color(0xffFCFCFC),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home())),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
