import 'package:cfrd_temp_app/ui/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    Future.microtask(() => context.read<HomeViewModel>().init());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(builder: (context, model, child) {
      return Scaffold(
        // App bar
        appBar: AppBar(
          title: const Text(
            "Quebec-Canada",
            style: TextStyle(
                color: Color(0xff36424D),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                fontSize: 12),
          ),
          leading: Image.asset("assets/images/rectangle10.png"),
        ),
        // Body
        body: Container(
            child: Column(
          children: [
            model.isLoading!
                ? const Text('Loading...')
                : Text(model.weatherModel!.main!.temp.toString()),
            // Space
            const SizedBox(
              height: 110,
            ),
            // FeelsLike
            const Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(text: "Feels Like A Good\nTime to ..."),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 5),
                      child: Image.asset(
                        "assets/images/rectangle10.png",
                        width: 30,
                      ),
                    ),
                  ),
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
        )),
      );
    });
  }
}
