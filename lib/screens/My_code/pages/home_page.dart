import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> name = [
    'carrot',
    'banana',
    'banana',
    'apple',
    'pineapple',
    'Muli'
  ];
  List<String> image = [
    'pngegg.png',
    'pngegg (1).png',
    'pngegg.png',
    'pngegg (2).png',
    'pngegg.png',
    'pngegg (2).png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Color.fromRGBO(245, 245, 245, 1.0),
        child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(171, 168, 168, 1.0)),
                        ),
                        Text(
                          "Allison Franci",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.menu_open,
                          color: Colors.green,
                          size: 30,
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(186, 232, 173, 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        height: 50,
                        width: 50,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8,),
                                  child: Icon(Icons.search, color: Colors.grey,),
                                ),
                                Text("Search grocery", style: TextStyle(
                                  color: Colors.grey
                                ),)
                              ],
                            ),
                            height: 50,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        elevation: 10,
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 70,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                          'assert/image/${image[index]}',
                                          height: 50,
                                          width: 50,
                                          fit: BoxFit.fill),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: Text('${name[index]}',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15)),
                                          ),
                                          Text(
                                            "\$45",
                                            style: TextStyle(
                                                color: Colors.lightGreen,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.75,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            crossAxisCount: 2,
                          ),
                          itemBuilder: ((context, index) {
                            return Stack(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                                  elevation: 10,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 130,
                                          child: Image.asset(
                                              'assert/image/pngegg.png', width: MediaQuery.of(context).size.width,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only( left: 8.0,bottom: 8),
                                          child: Text("hello", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                          ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                                          child: Text("Catagory", style: TextStyle(
                                            color: Colors.grey
                                          ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Text("\$45", style: TextStyle(
                                              color: Colors.lightGreen,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                      height: 40,
                                      width: 40,

                                      child: Icon(Icons.card_travel, color: Colors.white,)),
                                  right: 10,
                                  bottom: 10,
                                )
                              ],
                            );
                          }
                          )
                      ),
                    )
                  ],
                ))
              ],
            )),
      ),
    ));
  }
}
