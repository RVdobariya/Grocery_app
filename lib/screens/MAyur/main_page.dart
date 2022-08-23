import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.green,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_mall_outlined), label: 'My order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Offer'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 4,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Mayur Makani",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.greenAccent),
                              child: IconButton(
                                  onPressed: () {
                                    buildMenuItem();
                                  },
                                  icon: const Icon(
                                    Icons.menu_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  )),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  children: const [
                                    Icon(Icons.search),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "Search Grocery",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    buildProductList(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List items = [
    {
      'image': "assets/images/strawberry.png",
      'name': "Strawberry",
      'category': "Fruit",
      'price': "10.06"
    },
    {
      'image': "assets/images/avocado.png",
      'name': "Avocado",
      'category': "Vegetable",
      'price': "10.06"
    },
    {
      'image': "assets/images/broccoli.png",
      'name': "Broccoli",
      'category': "Vegetable",
      'price': "10.06",
    },
    {
      'image': "assets/images/orange.png",
      'name': "Orange",
      'category': "Fruit",
      'price': "1.60"
    },
    {
      'image': "assets/images/strawberry.png",
      'name': "Strawberry",
      'category': "Fruit",
      'price': "10.06"
    },
    {
      'image': "assets/images/avocado.png",
      'name': "Avocado",
      'category': "Vegetable",
      'price': "10.06"
    },
  ];

  Widget buildProductList() {
    return GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        shrinkWrap: true,
        primary: false,
        crossAxisSpacing: 15,
        mainAxisSpacing: 16,
        childAspectRatio: 0.7,
        children: List.generate(items.length, (index) {
          var item = items[index];
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 125,
                  height: 125,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(item['image']),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, left: 14),
                  child: Text(
                    item["name"],
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 14),
                  child: Text(
                    item["category"],
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 14),
                  child: Row(
                    children: [
                      Text(
                        '\$ ${item["price"]}',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.green),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          height: 30,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.orange,
                          ),
                          child: Icon(
                            Icons.local_mall_outlined,
                            size: 27,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        })
    );
  }
  Widget buildMenuItem() {
    final color = Colors.green;
     return Column(
       children: [
         Text("Food",style: TextStyle(fontSize: 16),),
         Icon(Icons.keyboard_arrow_down),
         SizedBox(height: 5,),
         Text("Deli"),

       ],
     );
  }
}