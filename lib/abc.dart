import 'dart:async';
import 'package:flutter/material.dart';

class DemoApp extends StatefulWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  String abc = "Hello";

  @override
  void initState(){
    super.initState();
    // autoCall();
    scheduleCall();
  }

  int a = 0;
  void scheduleCall(){
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(a<50){
        setState((){
          a++;
        });
      }else{
        timer.cancel();
      }

    });
  }


  void autoCall(){
    Timer(Duration(seconds: 3), () {
      setState((){
        abc = "World";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text("$a"),
      ),
    );
  }
}
