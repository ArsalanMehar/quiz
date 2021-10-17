import 'package:flutter/material.dart';

class home extends StatelessWidget {
  home({Key? key}) : super(key: key);
  final List<String> Products = [
    "Product 1",
    "Product 2",
    "Product 3",
    "Product 4",
    "Product 5",
    "Product 6",
    "Product 7",
    "Product 8",
  ];
  final List<String> Price = [
    "122",
    "441",
    "1222",
    "2244",
    "679",
    "222",
    "1122",
    "999"
  ];
  final List<String> ratings = [
    "4.1",
    "4.5",
    "5.0",
    "3.9",
    "4.0",
    "2.2",
    "4.2",
    "5.0"
  ];
  final List<String> imgs = [
    "https://media.istockphoto.com/photos/running-shoes-picture-id1249496770?b=1&k=20&m=1249496770&s=170667a&w=0&h=_SUv4odBqZIzcXvdK9rqhPBIenbyBspPFiQOSDRi-RI=",
    "https://media.wired.com/photos/60149f34056378f4af9cf9f1/191:100/w_2580,c_limit/Gear-Topo-Athletic-Ultraventure-Pro.jpg",
    "https://www.saucony.com/on/demandware.static/-/Sites-saucony_us-Library/default/dw37eca82f/content/seasonal-content/homepage/2021/08/12/images/best-sellers/endorphinshift2-d.jpg",
    "https://images.unsplash.com/flagged/photo-1556637640-2c80d3201be8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWRpZGFzJTIwc2hvZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "https://footwearnews.com/wp-content/uploads/2020/05/adidas-continental-80.jpg",
    "https://footwearnews.com/wp-content/uploads/2020/05/adidas-continental-80.jpg",
    "https://media.istockphoto.com/photos/adidas-blue-shoes-for-women-picture-id543052632?k=20&m=543052632&s=612x612&w=0&h=w5295upJmjPSCrGfygyi4zZrX6xajCrLvFcr8IeUH1g=",
    "https://di2ponv0v5otw.cloudfront.net/posts/2020/04/14/5e95c61eae766fa2ec8ca6d2/m_5e95c73ad737fdde921f88e0.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("MobiFit")),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
        ),
        child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
                  color: Colors.transparent,
                ),
            itemCount: Products.length,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.only(top: 9),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.35),
                          spreadRadius: 5,
                          blurRadius: 9,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 122,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage("${imgs[index]}"),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 21,
                          top: 22,
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  Products[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF6b6b6b),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 21.0,
                                      semanticLabel:
                                          'Text to announce in accessibility modes',
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 15, bottom: 9),
                                      child: Text(
                                        ratings[index],
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Rs: ${Price[index]}",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xff727273),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.pink,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                    ],
                  ));
            }),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}