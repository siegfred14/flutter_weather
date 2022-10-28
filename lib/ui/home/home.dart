import 'package:cfrd_temp_app/ui/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/rectangle10.png',
                  // width: 158,
                  height: 137,
                ),
                const Text(
                  "Quebec-Canada",
                  style: TextStyle(
                      color: Color(0xff36424D),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                  textAlign: TextAlign.left,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(42, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Feels like a good\ntime to ride a bike ",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff0C1823),
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'assets/images/vector.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              // height: 265,
              width: 300,
              margin: EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: Color(0xff0C1823), shape: BoxShape.circle),
              child: Column(
                children: [
                  // Stack(
                  //   children: <Widget>[
                  //     Positioned(
                  //       top: 261,
                  //       left: 44,
                  //       height: 55,
                  //       width: 55,
                  //       child: Image.asset(
                  //       'assets/images/cloudy_day_icon.png',
                  //       width: 55,
                  //       height: 55,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Stack(
                  //   children: <Widget>[
                  //     Positioned(
                  //       top: 261,
                  //       left: 252,
                  //       height: 55,
                  //       width: 55,
                  //       child: Image.asset(
                  //       'assets/images/rain_icon.png',
                  //       width: 55,
                  //       height: 55,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Stack(
                  //   children: const <Widget>[
                  //     Positioned(
                  //       top: 315,
                  //       left: 114,
                  //       height: 87,
                  //       width: 83,
                  //       child: Text.rich(
                  //           TextSpan(
                  //             children: <InlineSpan>[
                  //               TextSpan(
                  //                   text: "Today's Like\n",
                  //                   style: TextStyle(
                  //                       color: Colors.white,
                  //                       fontSize: 15,
                  //                       fontFamily: "Poppins",
                  //                       fontWeight: FontWeight.w400)),
                  //               TextSpan(
                  //                   text: "25\u2103",
                  //                   style: TextStyle(
                  //                       color: Colors.white,
                  //                       fontSize: 44,
                  //                       fontFamily: "Poppins",
                  //                       fontWeight: FontWeight.w400)),
                  //             ],
                  //           ),
                  //         ),
                  //     ),
                  //   ],
                  // ),
                  // Stack(
                  //   children: <Widget>[
                  //     Positioned(
                  //       top: 261,
                  //       left: 44,
                  //       height: 85,
                  //       width: 85,
                  //       child: Image.asset(
                  //       'assets/images/sunrise.png',
                  //       width: 85,
                  //       height: 85,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Stack(
                  //   children: <Widget>[
                  //     Positioned(
                  //       top: 384,
                  //       left: 41,
                  //       height: 55,
                  //       width: 55,
                  //       child: Image.asset(
                  //       'assets/images/windy_icon.png',
                  //       width: 55,
                  //       height: 55,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Stack(
                  //   children: <Widget>[
                  //     Positioned(
                  //       top: 384,
                  //       left: 264,
                  //       height: 55,
                  //       width: 55,
                  //       child: Image.asset(
                  //       'assets/images/clear_night_icon.png',
                  //       width: 55,
                  //       height: 55,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Stack(
                  //   children: <Widget>[
                  //     Positioned(
                  //       top: 471,
                  //       left: 148,
                  //       height: 55,
                  //       width: 55,
                  //       child: Image.asset(
                  //       'assets/images/thunderstorm_icon.png',
                  //       width: 55,
                  //       height: 55,
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/cloudy_day_icon.png',
                          width: 55,
                          height: 55,
                        ),
                        Image.asset(
                          'assets/images/rain_icon.png',
                          width: 55,
                          height: 55,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/windy_icon.png',
                              width: 55,
                              height: 55,
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text.rich(
                            TextSpan(
                              children: <InlineSpan>[
                                TextSpan(
                                    text: "Today's Like\n",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "25\u2103",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 44,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/sunrise.png',
                                width: 85,
                                height: 85,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/clear_night_icon.png',
                              width: 55,
                              height: 55,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/thunderstorm_icon.png',
                        width: 55,
                        height: 55,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(42, 60, 0, 0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                            text: "Today's Mood\n",
                            style: TextStyle(
                                color: Color(0xff36424D),
                                fontSize: 14,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: "Very Good",
                            style: TextStyle(
                                color: Color(0xff0C1823),
                                fontSize: 12,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                            text: "Tomorrow's Mood\n",
                            style: TextStyle(
                                color: Color(0xff36424D),
                                fontSize: 14,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: "Excellent",
                            style: TextStyle(
                                color: Color(0xff0C1823),
                                fontSize: 12,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
