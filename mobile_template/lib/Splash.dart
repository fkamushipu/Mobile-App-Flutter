// Align all enclosed element in the center
import 'package:flutter/material.dart';

// Declaring the state 
class SplashPage extends StatefulWidget{
  const SplashPage({key? key}) : super(key: key);

  @override 
  _SplashPageState createState() => _SplashPageState;
}

class _SplashPageState extends State<SplashPage>{
  @override 
  // Initialising the first state
  void initState(){
    super.initState();
    // It will take 5 seconds to navigate to Home screen
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement( 
        context, MaterialPageRoute(builder: (context) => Home()))
    );
  }

  // Splash screen content and design goes below
  Widget build(BuilContext context){
    // Scaffold allows cross platform design
    return Scaffold(
      body: Container(
        // Allow the container to be as big as it can be
        height: double.infinity,
        weight: double.infinity,

        // Gradient colors
        decoration: const BoxDecoration(
          gradient: linearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:[
                Color.fromARGB(250, 255, 0, 0.21),
                Color.fromARGB(6, 46, 255, 0.28),
                Color.fromARGB(54, 197, 237, 0.54),
            ],
          ),
        ),

        // Display the content vertically with Column
        child: Column(
          children:[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                const SizedBox(
                  height: 200,
                  child: Text(
                    "Let's Learn Together",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 29, 12, 98),
                      fontFamily: 'Schyler',
                      fontWeight: FontWeight.bold,
                      fontSize:24,
                    )
                  )
                ),
                Image.asset(
                  "assets/clapping.gif",
                  height: 191.0,
                  weight: 227.0,
                )''
              ],
            ),
          ],
        )

      )
    );
  }
}