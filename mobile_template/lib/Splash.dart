// Align all enclosed element in the center
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mobile_template/Home.dart';

// Declaring the state
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  // Initialising the first state
  void initState() {
    super.initState();
    // It will take 5 seconds to navigate to Home screen
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  // Splash screen content and design goes below
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    // Scaffold allows cross platform design
    return Scaffold(
        body: Container(
            // Allow the container to be as big as it can be
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(10.0),

            // Gradient colors
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(31, 250, 255, 0),
                  Color.fromARGB(38, 6, 46, 255),
                  Color.fromARGB(100, 237, 54, 197),
                ],
              ),
            ),

            // Display the content vertically with Column
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 100,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Card(
                            color: Color.fromARGB(82, 215, 218, 221),
                            child: Center(
                              child: Text("Let's Learn Together",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 29, 12, 98),
                                    fontFamily: 'Schyler',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  )),
                            ))),
                    Image.asset(
                      "assets/images/clapping.gif",
                      height: 200.0,
                      width: 230.0,
                    )
                  ],
                ),
              ],
            )));
  }
}
