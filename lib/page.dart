import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/test.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class PageT extends StatefulWidget {
  static const String routeName = 'PageT';

  @override
  State<PageT> createState() => _PageTState();
}

class _PageTState extends State<PageT> {
  var _isSelected1 = false;
  var _isSelected2 = true;
  var _isSelected3 = true;
  var _isSelected4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/img_12.png'),
                  height: 24,
                  width: 24,
                ),
                Text(
                  'AliceCare',
                  style: TextStyle(fontSize: 24),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 44,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                    label: Text(
                      'Articles, Video, Audio and More,...',
                      style: TextStyle(color: Colors.grey),
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      textDirection: TextDirection.ltr,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: 50,
                child: Expanded(
                    child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ChoiceChip(
                      label: const Text('Discover'),
                      selected: _isSelected1,
                      backgroundColor: _isSelected1
                          ? Colors.purpleAccent.shade100
                          : Color(0xffD6BBFB),
                      labelStyle: _isSelected1
                          ? TextStyle(color: Colors.grey[50])
                          : TextStyle(color: Color(0xff6941C6)),
                      onSelected: (_) {
                        _isSelected1 = _;
                        setState(() {});
                        labelStyle:
                        TextStyle(color: Colors.white);
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ChoiceChip(
                      label: const Text('News'),
                      selected: _isSelected2,
                      backgroundColor: _isSelected2
                          ? Colors.purpleAccent.shade100
                          : Color(0xffD6BBFB),
                      labelStyle: _isSelected2
                          ? TextStyle(color: Colors.grey[50])
                          : TextStyle(color: Color(0xff6941C6)),
                      onSelected: (_) {
                        _isSelected2 = _;
                        setState(() {});
                        labelStyle:
                        TextStyle(color: Colors.white);
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ChoiceChip(
                      label: const Text('Most Viewed'),
                      selected: _isSelected3,
                      backgroundColor: _isSelected3
                          ? Colors.purpleAccent.shade100
                          : Color(0xffD6BBFB),
                      labelStyle: _isSelected3
                          ? TextStyle(color: Colors.grey[50])
                          : TextStyle(color: Color(0xff6941C6)),
                      onSelected: (_) {
                        _isSelected3 = _;
                        setState(() {});
                        labelStyle:
                        TextStyle(color: Colors.white);
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ChoiceChip(
                      label: const Text('Saved'),
                      selected: _isSelected4,
                      backgroundColor: _isSelected4
                          ? Colors.purpleAccent.shade100
                          : Color(0xffD6BBFB),
                      labelStyle: _isSelected4
                          ? TextStyle(color: Colors.grey[50])
                          : TextStyle(color: Color(0xff6941C6)),
                      onSelected: (_) {
                        _isSelected4 = _;
                        setState(() {});
                        labelStyle:
                        TextStyle(color: Colors.white);
                      },
                    ),
                  ],
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot topics',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Row(
                    children: [
                      Text(
                        'see more',
                        style: TextStyle(
                            color: Color(0xff5925DC),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Image(
                        image: AssetImage('assets/images/img_16.png'),
                        fit: BoxFit.fill,
                        width: 16,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: [
                  Image.asset("assets/images/img_19.png"),
                  Image.asset("assets/images/img_10.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                  child: Text(
                    'Get Tips',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.topLeft),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/img_15.png",
                          width: 100,
                          height: 150,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Connect with doctors &\n get suggestions',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Connect now and get\n expert insights ',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'View details',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff7F56D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            )),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 20, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cycle Phases and Period',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Row(
                    children: [
                      Text(
                        'see more',
                        style: TextStyle(
                            color: Color(0xff5925DC),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Image(
                        image: AssetImage('assets/images/img_16.png'),
                        fit: BoxFit.fill,
                        width: 16,
                      )
                    ],
                  ),
                ],
              ),
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
                color: Color(0xff667085),
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_tree_outlined,
                color: Color(0xff027A48),
              ),
              label: "."),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color(0xff667085),
              ),
              label: ""),
        ],
      ),
    );
  }
}
