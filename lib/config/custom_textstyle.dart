import 'package:flutter/material.dart';
import 'package:grocery_app/config/custom_color.dart';

class CustomTextStyle{
  static const TextStyle titleTextStyle=TextStyle(
    letterSpacing: 2,
    wordSpacing: 2,
      fontSize: 30,
      fontWeight: FontWeight.w900,
  );

  static const TextStyle textStyle=TextStyle(
    fontSize: 20,
  );
  static  TextStyle errorStyle=TextStyle(
    fontSize: 17,
    color: CustomColor.errorColors,
  );
}