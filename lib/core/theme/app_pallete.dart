import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundColor = Color.fromRGBO(255, 255, 255, 0.02);

  static const Color primaryColor = Color.fromRGBO(246, 48, 147, 1);

  static const Color whiteColor = Color.fromRGBO(255, 255, 255, 1);

  static const Color hintTextColor = Color.fromRGBO(170, 170, 170, 1);

  static const Color borderColor = Color.fromRGBO(227, 229, 237, 1);

  static Color textFieldColor = const Color.fromRGBO(19, 7, 11, 1); 

  static Color textColor = const Color.fromRGBO(19, 7, 11, 1); 

  static Color cardColor = const Color(0xff232323);

  static Color iconColor = const Color.fromRGBO(110, 116, 129, 1); 

  static Color messageColor = Colors.purple; 

  static Color activeTextFieldBorderColor =
      const Color(0xffffffff).withOpacity(0.24);

  static const Color transparentColor = Colors.transparent;

  static const Color redColor = Colors.red;

  static Color greenColor = const Color.fromRGBO(0, 210, 21, 1); 

  static const Color snackbarErrorColor = Color(0xffC6C6C6);

  static const Color snackbarSuccessColor = Color.fromRGBO(246, 48, 147, 1);
}

class AppGradients {
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.01, 0.54, 0.77],
    colors: [
      Color(0xFFFF268E), // #FF268E
      Color(0xFFFF53A9), // #FF53A9
      Color(0xFFFF268E), // #FF268E
    ],
    transform: GradientRotation(271.4 * (3.1415926535897932 / 180)), // Convert degrees to radians
  );
}
