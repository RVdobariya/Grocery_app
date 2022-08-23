import 'package:flutter/material.dart';

class CustomColor{
  static Color primaryColors=const  Color.fromRGBO(64, 151, 72, 1.0);
  static Color backgroundColors= const  Color.fromRGBO(210, 245, 225, 1.0);
  static Color textColors=Colors.white;
  static Color errorColors=Color.fromRGBO(222, 5, 5, 1.0);
  static Color blurColors=Colors.black54;
  static Color eColors=Color.fromRGBO(236, 236, 236, 1.0);
  static Color tColors=Colors.black;
  static Color tab_icon_color = Colors.lightGreen;
  static Gradient Gradientcolor = LinearGradient(colors: [Colors.green, Colors.lightGreenAccent]);
  static Decoration boxdecoration = BoxDecoration(
      gradient: LinearGradient(colors: [Color.fromRGBO(34, 139, 34, 1.0), Color.fromRGBO(0, 255, 0, 0.9)]),
      borderRadius: BorderRadius.all(Radius.circular(100))
  );
}