import 'package:flutter/material.dart';
class MyOffer extends StatefulWidget {
  const MyOffer({Key? key}) : super(key: key);

  @override
  State<MyOffer> createState() => _MyOfferState();
}

class _MyOfferState extends State<MyOffer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 200,
      color: Colors.black,
    );
  }
}
