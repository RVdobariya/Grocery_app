import 'package:flutter/material.dart';
import 'package:grocery_app/config/custom_color.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color.fromRGBO(245, 245, 245, 1.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.lightGreenAccent, Colors.lightGreen]
                      )
                    ),
                    height: 500,
                  ),
                  Positioned(
                    top: 100,
                      child: Container(
                        height:400,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: CustomColor.boxdecoration,
                                      height: 40,
                                      width: 100,
                                    ),
                                    Container(
                                      decoration: CustomColor.boxdecoration,
                                      height: 40,
                                      width: 100,
                                    ),
                                    Container(
                                      decoration: CustomColor.boxdecoration,
                                      height: 40,
                                      width: 100,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 320,
                              child: ListView.builder(itemCount: 3, itemBuilder: (context,i){
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 100,
                                    width: 200,
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset('assert/image/pngegg.png', fit: BoxFit.fill, width: 78,),
                                            Row(
                                              children: [
                                                Icon(Icons.add, color: Colors.green,),
                                                Text("Add note", style: TextStyle(
                                                  color: Colors.green
                                                ),)
                                              ],
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10.0,bottom: 5),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 8.0, bottom: 12),
                                                child: Text("Tometo", style: TextStyle(
                                                  fontSize: 18, fontWeight: FontWeight.bold
                                                ),),
                                              ),

                                              Text("rate"),
                                              Spacer(),
                                              Icon(Icons.delete, color: Colors.orange,)
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 18.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height:25,
                                                width: 25,
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius: BorderRadius.all(Radius.circular(100))
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8.0,right: 8),
                                                child: Text("1", style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                                ),),
                                              ),
                                              Container(
                                                height:25,
                                                width: 25,
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius: BorderRadius.all(Radius.circular(100))
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                        ),
                      ))
                ],
              ),
              Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                      gradient: CustomColor.Gradientcolor
                  ),
                  child: Text("Checkout", style: TextStyle(
                    color: Colors.white, fontSize: 20
                  ),),
                ),

    )),
            ],
          ),
        ),
      ),
    );
  }
}
