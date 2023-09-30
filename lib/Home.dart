import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/test.dart';
import 'package:flutter/material.dart';

/*final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];*/

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const String routeName = 'Home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image(image: AssetImage("assets/images/bg.png")),
        title: Text(
          'Moody',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Badge(
                child: Icon(
              Icons.add_alert_sharp,
              color: Colors.black26,
            )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
              child: Row(
                children: [
                  Text('hello ,'),
                  Text('Saraa Rose'),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('How are you feeling today ?'),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      child: Image(
                        image: AssetImage("assets/images/img.png"),
                      ),
                    ),
                    Text('Love')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      child: Image(
                        image: AssetImage("assets/images/img_1.png"),
                      ),
                    ),
                    Text('Cool')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      child: Image(
                        image: AssetImage("assets/images/img_2.png"),
                      ),
                    ),
                    Text('Happy')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      child: Image(
                        image: AssetImage("assets/images/img_3.png"),
                      ),
                    ),
                    Text('Sad')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Feature'),
                  Row(
                    children: [
                      Text(
                        'see more',
                        style: TextStyle(color: Colors.green),
                      ),
                      Icon(Icons.arrow_back_ios_sharp, color: Colors.green)
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.5,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: [Image.asset("assets/images/slide.png")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 20, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Exercise'),
                  Row(
                    children: [
                      Text('see more', style: TextStyle(color: Colors.green)),
                      Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.green,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.purple.shade100,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/images/img_5.png"),
                          width: 15,
                        ),
                        Text('samraa')
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent.shade100,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/images/6.png"),
                          width: 15,
                        ),
                        Text('samraa')
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent.shade100,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/images/7.png"),
                          width: 15,
                        ),
                        Text('samraa')
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent.shade100,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/images/8.png"),
                          width: 15,
                        ),
                        Text('samraa')
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {},
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Home.routeName);
                },
                child: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.pushNamed(context, Test.routeName);
              },
              child: Icon(
                Icons.pages_rounded,
                color: Colors.black,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_tree_outlined,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: ""),
        ],
      ),
    );
  }
}
