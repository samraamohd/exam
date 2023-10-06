import 'package:badges/badges.dart';
import 'package:exam/page.dart';
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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                  position: BadgePosition.custom(start: 12),
                  child: Icon(
                    Icons.add_alert_outlined,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              size: 18,
                              color: Color(0xff717BBC),
                            ),
                            Text('haert Rate'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '81 BPM',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.toc,
                              size: 18,
                              color: Color(0xff717BBC),
                            ),
                            Text('To-do'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '32,5 %',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.local_fire_department_outlined,
                              size: 18,
                              color: Color(0xff717BBC),
                            ),
                            Text('Calo'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '1000 cal',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Workout Programs',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Column(
              children: [
                TabBar(
                  indicatorColor: Color(0xff363F72),
                  labelColor: Color(0xff363F72),
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                  tabs: <Widget>[
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "All Type",
                          style: TextStyle(color: Color(0xff363F72)),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        constraints: BoxConstraints.expand(width: 100),
                        child: Text(
                          "Full body",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        constraints: BoxConstraints.expand(width: 100),
                        child: Text(
                          "Apper",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        alignment: Alignment.center,
                        constraints: BoxConstraints.expand(width: 100),
                        child: Text(
                          "Lower",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 360,
                  child: TabBarView(children: [
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey.shade300,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            '7 days',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          )),
                                      Text(
                                        'Morning Yoga',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text('data'),
                                      Row(
                                        children: [
                                          Icon(Icons.access_alarm),
                                          Text('30 mins')
                                        ],
                                      )
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/img_7.png",
                                        width: 100,
                                        height: 150,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey.shade300,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            '7 days',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          )),
                                      Text(
                                        'Morning Yoga',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text('data'),
                                      Row(
                                        children: [
                                          Icon(Icons.access_alarm),
                                          Text('30 mins')
                                        ],
                                      )
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/img_8.png",
                                        fit: BoxFit.cover,
                                        width: 100,
                                        height: 150,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey.shade300,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            '7 days',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          )),
                                      Text(
                                        'Morning Yoga',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Text('data'),
                                      Row(
                                        children: [
                                          Icon(Icons.access_alarm),
                                          Text('30 mins')
                                        ],
                                      )
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/img_7.png",
                                        width: 100,
                                        height: 150,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage("assets/images/img_3.png"),
                    ),
                    Image(
                      image: AssetImage("assets/images/img_3.png"),
                    ),
                    Image(
                      image: AssetImage("assets/images/img_3.png"),
                    ),
                  ]),
                )
                /*TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    */ /*Container(
                      color: Colors.green,

                      ),
                    ),*/ /*


                    Container(
                      color: Colors.yellow,
                    ),
                    Container(color: Colors.cyan),
                  ],
                ),*/
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
                    color: Color(0xff667085),
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
                  color: Color(0xff027A48),
                ),
              ),
              label: ".",
            ),
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, PageT.routeName);
                  },
                  child: Icon(
                    Icons.account_tree_outlined,
                    color: Color(0xff667085),
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color(0xff667085),
                ),
                label: ""),
          ],
        ),
      ),
    );
  }
}
