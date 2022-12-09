// Align all enclosed element in the center
import 'package:flutter/material.dart';

// Declaring the state
class Body extends StatelessWidget {
  @override
  // Splash screen content and design goes below
  Widget build(BuildContext context) {
    // Scaffold allows cross platform design
    return Scaffold(
        body: Container(
          height: 600, 
          width: double.infinity, 
        child: Card(
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
          )
          
        )));
  }
}
