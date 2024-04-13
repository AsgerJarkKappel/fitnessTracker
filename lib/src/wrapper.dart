import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screens/authenticate/authenticate.dart';
import 'package:flutter_application_1/src/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // Return either home or authentication widget based on user authentication status
    return Home();
  }
}
