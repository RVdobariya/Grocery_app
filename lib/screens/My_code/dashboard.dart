import 'package:flutter/material.dart';
import 'package:grocery_app/config/custom_color.dart';
import 'package:grocery_app/screens/My_code/pages/cart.dart';
import 'package:grocery_app/screens/My_code/pages/home_page.dart';
import 'package:grocery_app/screens/My_code/pages/myorder.dart';
import 'package:grocery_app/screens/My_code/pages/offer.dart';
import 'package:grocery_app/screens/My_code/pages/settings.dart';
class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int current_index = 0;
List pages = [HomePage(),MyCart(),MyOrder(),MyOffer(),Setting()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: Colors.lightGreen,

        ),
        fixedColor: Colors.black,
        unselectedItemColor: Colors.black26,
        type: BottomNavigationBarType.fixed,

        elevation: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_sharp,),
              label: "Cart"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined,),
              label: "My order"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard,),
              label: "Offer"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting"
          )
        ],
        currentIndex: current_index,
        onTap: (index){
          setState((){
            current_index = index;
          });
        },
      ),
      body: pages[current_index],
    );
  }
}
