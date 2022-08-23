import 'package:flutter/material.dart';
import 'package:grocery_app/config/custom_color.dart';
import 'package:grocery_app/config/custom_textstyle.dart';
import 'package:grocery_app/shopfrom.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 90),
            child: Row(
              children: [
                Container(
                  height: 250,
                  width: 300,
                  child: Image.asset("assert/image/217-2175219_woman-carrying-groceries-png.png",
                      fit:BoxFit.contain),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Online Grocery',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Pick & Delivery',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Listen podcast and open your',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('world this application',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,right: 45,left: 45),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => ShopFromPage(),));
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                decoration: CustomColor.boxdecoration,
                child: Text("Get Started", style: CustomTextStyle.textStyle.copyWith(color: CustomColor.textColors),),
              ),
            )
          ),
        ],
      ),
    );
  }
}
