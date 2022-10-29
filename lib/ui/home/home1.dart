import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String cityValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 44,
              left: 26,
              height: 38,
              width: 40,
              child: Container(
                height: 38,
                width: 40,
                child: Image.asset(
                  "assets/images/rectangle10.png",
                ),
              ),
            ),
            Positioned(
              top: 44,
              left: 78,
              // width: 85,
              // height: 18,
              child: Container(
                width: 280,
                height: 100,
                // color: Colors.red,
                child: CSCPicker(
                  layout: Layout.horizontal,
                  onCountryChanged: (country) {},
                  onStateChanged: (state) {},
                  // showStates: false,
                  onCityChanged: (value) {
                    // setState(() {
                    //   cityValue = value;
                    // });
                  },
                  dropdownDialogRadius: 30,
                ),
              ),
            ),
            Positioned(
              top: 155,
              left: 37,
              width: 254,
              height: 54,
              child: Container(
                width: 254,
                height: 54,
                // color: Color(0xff09151E),
                child: const Text(
                  "Feels Like A good\ntime to ride a bike",
                  style: TextStyle(
                    color: Color(0xff09151E),
                    fontSize: 24,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 180,
              left: 250,
              width: 24,
              height: 24,
              child: Container(
                width: 24,
                height: 24,
                child: Image.asset("assets/images/vector.png"),
              ),
            ),
            Positioned(
              top: 265,
              left: 48,
              width: 265,
              height: 265,
              child: Container(
                width: 265,
                height: 265,
                decoration: const BoxDecoration(
                    color: Color(0xff0C1823), shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: 290,
              left: 55,
              width: 65,
              height: 65,
              child: Container(
                width: 65,
                height: 65,
                child: Image.asset("assets/images/cloudy_day_icon.png"),
              ),
            ),
            Positioned(
              top: 290,
              left: 250,
              width: 65,
              height: 55,
              child: Container(
                width: 55,
                height: 55,
                child: Image.asset("assets/images/rain_icon.png"),
              ),
            ),
            Positioned(
              top: 345,
              left: 127,
              width: 83,
              height: 21,
              child: Container(
                width: 83,
                height: 21,
                // color: Colors.purple[300],
                child: const Text(
                  "Today's Like",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
            Positioned(
              top: 356,
              left: 140,
              width: 71,
              height: 66,
              child: Container(
                width: 71,
                height: 66,
                // color: Colors.purple[300],
                child: const Text("25\u1d52",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 44,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400)),
              ),
            ),
            // Positioned(
            //   top: 130,
            //   left: 90,
            //   width: 250,
            //   height: 250,
            //   child: Container(
            //     width: 80,
            //     height: 80,
            //     color: Colors.purple[300],
            //     child: Text(
            //       'Purple',
            //       style: TextStyle(color: Colors.white,
            //       fontSize: 20),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
