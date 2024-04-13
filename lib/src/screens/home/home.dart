import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.yellow,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                print("loged out");
              },
              icon: const Icon(Icons.person))
        ],
      ),
    );
  }
}
