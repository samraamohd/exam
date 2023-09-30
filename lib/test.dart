import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class Test extends StatefulWidget {
  static const String routeName = 'Test';

  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: CircleAvatar(
                child: Image(
              image: AssetImage("assets/images/img_6.png"),
            )),
            title: Text(
              'Hello,jod',
            ),
            subtitle: Text('Ready to workout?'),
            trailing: Badge(
                child: Icon(
              Icons.add_alert_sharp,
              color: Colors.black,
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade300,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite_border),
                          Text('haet'),
                        ],
                      ),
                      Text(
                        '51PM',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  VerticalDivider(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite_border),
                          Text('haet'),
                        ],
                      ),
                      Text(
                        '51PM',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  VerticalDivider(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite_border),
                          Text('haet'),
                        ],
                      ),
                      Text(
                        '51PM',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  VerticalDivider(
                    thickness: 3,
                    color: Colors.black,
                    endIndent: 2,
                    width: 20,
                    indent: 5,
                  ),
                ],
              ),
            ),
          ),
          Text(
            'WorkoutProgram',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Badge(
                  badgeContent: Text('0'),
                  child: Icon(Icons.icecream),
                ),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
          TabBarView(
            children: <Widget>[
              Center(
                child: Text("It's cloudy here"),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
              Center(
                child: Text("It's sunny here"),
              ),
            ],
          ),
        ],
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
                focusColor: Colors.green,
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
