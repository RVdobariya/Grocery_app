import 'package:flutter/material.dart';
import 'package:grocery_app/config/custom_color.dart';
import 'package:grocery_app/config/custom_textstyle.dart';
import 'package:grocery_app/screens/pages/home_page/homepage.dart';

class PickUpPage extends StatefulWidget {
  const PickUpPage({Key? key}) : super(key: key);

  @override
  State<PickUpPage> createState() => _PickUpPageState();
}

class _PickUpPageState extends State<PickUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: ListView(
            children: [
              Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20,top: 40),
                      child: InkWell
                        (child: Text("Skip",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),onTap: (){

                      },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 110,
                    width: 400,
                    child:  Image(image: AssetImage("assert/image/express.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 250,
                    width: 400,
                    child: Column(
                      children: [
                        Image(image: AssetImage("assert/image/images.jpg"),fit:BoxFit.fitHeight,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Pick or Delivery',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Pick up your order in-store or have',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('it delivered to your door',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue)),
                    ],
                  ),
                ),
                GestureDetector(onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: CustomColor.boxdecoration,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Got it",style: CustomTextStyle.textStyle.copyWith(color: CustomColor.textColors),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    ],
          ),
    );
  }
}
