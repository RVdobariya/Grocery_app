import 'package:flutter/material.dart';
import 'package:grocery_app/mainpage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Grossry App",
      home: MainPage(),
    );
  }
}
