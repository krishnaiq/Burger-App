import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}

List products = [
  {
    "image": "images/burger1.png",
    "title": "Cheese Burger",
    "subtitle": "Onion with Cheese!",
    "price": 14,
  },
  {
    "image": "images/burger2.png",
    "title": "Beef Burger",
    "subtitle": "Onion with Cheese!",
    "price": 23,
  },
  {
    "image": "images/burger3.png",
    "title": "Chicken Burger",
    "subtitle": "Onion with Cheese!",
    "price": 65,
  },
  {
    "image": "images/burger4.png",
    "title": "Classic Burger",
    "subtitle": "Onion with Cheese!",
    "price": 34,
  },
  {
    "image": "images/burger5.png",
    "title": "Grilled Burger",
    "subtitle": "Onion with Cheese!",
    "price": 12,
  },
  {
    "image": "images/burger6.png",
    "title": "Pork Burger",
    "subtitle": "Onion with Cheese!",
    "price": 214,
  },
  {
    "image": "images/burger7.png",
    "title": "Mutton Burger",
    "subtitle": "Onion with Cheese!",
    "price": 45,
  },
  {
    "image": "images/burger1.png",
    "title": "Burger",
    "subtitle": "Onion with Cheese!",
    "price": 21,
  },
];

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff232228),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 20,
              decoration: BoxDecoration(
                  color: Color(0xfff0b321),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 100,
                      color: Color(0xfff0b321),
                      spreadRadius: 50,
                    )
                  ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.clear_all_rounded),
                      onPressed: () {
                        print("Menu Pressed!");
                      }),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.white30),
                        left: BorderSide(width: 1.0, color: Colors.white30),
                        right: BorderSide(width: 1.0, color: Colors.white30),
                        bottom: BorderSide(width: 1.0, color: Colors.white30),
                      ),
                    ),
                    child: IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.search),
                        onPressed: () {
                          print("Search Pressed!");
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                  title: Text(
                    "Every Bite a",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 25),
                  ),
                  subtitle: Text(
                    "Better burger!",
                    style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w300,
                        fontSize: 15),
                  )),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 70,
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xfff0b321),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Burger",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Pasta",
                  style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.w300,
                      fontSize: 15),
                ),
                Text(
                  "Salads",
                  style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.w300,
                      fontSize: 15),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0, color: Colors.white30),
                        left: BorderSide(width: 1.0, color: Colors.white30),
                        right: BorderSide(width: 1.0, color: Colors.white30),
                        bottom: BorderSide(width: 1.0, color: Colors.white30),
                      ),
                      // color: Colors.white30,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.tune_rounded),
                      onPressed: () {
                        print("tune");
                      }),
                )
              ],
            ),
            SizedBox(height: 25),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  for (var i = 0; i < products.length; i++)
                    InkWell(
                      child: Column(
                        children: [
                          Expanded(child: Image.asset(products[i]['image'])),
                          ListTile(
                            isThreeLine: true,
                            title: Text(
                              products[i]['title'],
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  products[i]['subtitle'],
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white60,
                                      fontWeight: FontWeight.w200),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      r"$",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      products[i]['price'].toString(),
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(width: 70),
                                    Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black,
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                    image: products[i]['image'],
                                    price: products[i]['price'],
                                    title: products[i]['title'])));
                      },
                    ),
                ],
              ),
            ),
            BottomAppBar(
                elevation: 0,
                color: Color(0xff232228),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          icon: Icon(Icons.mail_outline_rounded),
                          color: Colors.grey,
                          onPressed: () {
                            print("Pressed Mail!");
                          }),
                      IconButton(
                          icon: Icon(Icons.favorite_outline_rounded),
                          color: Colors.grey,
                          onPressed: () {
                            print("Pressed Mail!");
                          }),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xfff0b321),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 50,
                                  offset: Offset(1.0, 40),
                                  color: Color(0xfff0b321),
                                  spreadRadius: -1,
                                )
                              ]),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.shopping_bag_outlined),
                          color: Colors.grey,
                          onPressed: () {
                            print("Pressed Mail!");
                          }),
                      IconButton(
                          icon: Icon(Icons.person_outline_outlined),
                          color: Colors.grey,
                          onPressed: () {
                            print("Pressed Mail!");
                          })
                    ]))
          ],
        ));
  }
}

class DetailScreen extends StatefulWidget {
  final String title, image;
  final int price;

  const DetailScreen({Key key, this.title, this.image, this.price})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff232228),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 20,
                decoration: BoxDecoration(
                    color: Color(0xfff0b321),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 100,
                        color: Color(0xfff0b321),
                        spreadRadius: 50,
                      )
                    ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    )
                  ]),
            ),
            Container(
                width: 500, height: 500, child: Image.asset(widget.image)),
            SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    widget.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 30),
                  ),
                ),
                SizedBox(width: 50),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color.fromARGB(25, 0, 0, 0),
                            Color.fromARGB(25, 255, 255, 255),
                          ])),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)),
                            child: Icon(Icons.add)),
                        Text(
                          "1",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)),
                            child: Icon(Icons.remove))
                      ]),
                )
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                """
Burger with fresh cheese and onion
served with fries and drink. Enjoy our 20% offer
with our NEW Promo Code.
Promo Code: kw3jK@df!dF 
""",
                style: TextStyle(
                  color: Colors.white70,
                  wordSpacing: 2,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Total Price",
                style: TextStyle(
                  color: Colors.white70,
                  wordSpacing: 2,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    widget.price.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 50,
                            offset: Offset(1.0, 30),
                            color: Color(0xfff0b321),
                            spreadRadius: -10,
                          )
                        ],
                        color: Color(0xfff0b321),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                              child: Text(
                            "Order Now!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          )),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Icon(Icons.shopping_bag_outlined),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
