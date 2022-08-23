import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grocery_app/getstared.dart';
import 'package:grocery_app/shopfrom.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);



  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  // @override
  // void initState(){
  //   super.initState();
  //   autoCall();
  // }
  //
  // void autoCall(){
  //   Timer(Duration(seconds: 3), () {
  //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GetStarted()));
  //   });
  // }
  bool start = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: Colors.red,
              height: 200,
              width: 200,
              child: Image.asset("assert/image/sc.png", fit: BoxFit.cover),
              ),
            if(start == true)
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CircularProgressIndicator(
                     strokeWidth: 5,
                color: Colors.green,backgroundColor: Colors.orangeAccent,
              ),
            ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: FloatingActionButton(onPressed: (){
              Timer(Duration(seconds: 5), () {
                setState((){
                  start == true;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) => GetStarted()));
              });
            },
              backgroundColor: Colors.green,
              child: Icon(Icons.navigate_next),

            ),
          )
          ],
        ),
      ),
    );
  }
}
