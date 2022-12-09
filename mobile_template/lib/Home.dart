// Align all enclosed element in the center
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mobile_template/components/Body.dart';

// Declaring the state
class Home extends StatelessWidget {
  @override
  // Splash screen content and design goes below
  Widget build(BuildContext context) {
    // Scaffold allows cross platform design
    return Scaffold(
      appBar: Navbar(),
      drawer: Drawer(
          child: ListView(
        // Remove default padding
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 233, 201, 106),
            ),
            child: Text("Menu"),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              // Close modal or drawer after the tap
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Login'),
            onTap: () {
              // Close modal or drawer after the tap
              Navigator.pop(context);
            },
          ),
        ],
      )),
      body: Body(),
    );
  }

  AppBar Navbar() {
    return AppBar(
      backgroundColor: const Color.fromRGBO(181, 177, 177, 1),
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      title: const Text("Let's Learn Together"),
    );
  }
}
