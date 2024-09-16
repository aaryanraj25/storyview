import 'package:flutter/material.dart';

class SplashController {
  final BuildContext context;

  SplashController(this.context);

  // Timer to navigate to the next page after 3 seconds
  void startSplashTimer() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home'); // Replace with your next screen route
    });
  }
}
