import 'package:banner_carousel/banner_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firstapp/Extra_Screens/Notification.dart';
import 'package:firstapp/Home_services/plumbing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class main_page extends StatefulWidget {
  const main_page({super.key});

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  int activeindex = 0;
  List<String> images = [
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner.jpg',
  ];

  List<Widget> generatedimages() {
    return images
        .map((element) => SizedBox(
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  child: Image.asset(
                    element,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // leading: Icon(
          //   Icons.menu,
          //   color: Colors.white,
          // ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => notification()),
                    );
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white12,
          child: ListView(
            children: [ListTile()],
          ),
        ),
        body: ListView(
          children: [
            Container(
                child: Column(children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    height: 54,
                    decoration: BoxDecoration(
                        color: Color(0xFF262626),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 0,
                              color: Colors.black)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: "Search for services",
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ])),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Stack(
                children: [
                  CarouselSlider(
                      items: generatedimages(),
                      options: CarouselOptions(
                        enableInfiniteScroll: false,
                        viewportFraction: 0.9,
                        height: 170,
                        onPageChanged: (index, reason) =>
                            setState(() => activeindex = index),
                      ))
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                    child: AnimatedSmoothIndicator(
                  count: 3,
                  effect: ScrollingDotsEffect(
                      dotHeight: 7,
                      dotWidth: 10,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.white),
                  activeIndex: activeindex,
                )),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Stack(
                children: [
                  Text(
                    'Home Services',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(right: 20, top: 5),
                    child: Text('View All',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 12,
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 40),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => plumbing()),
                                    );
                                  },
                                  child: Icon(
                                    Icons.plumbing,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    backgroundColor: Color(0xFF262626),
                                    foregroundColor: Color(0xFF262626),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Plumbing',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.cable,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    backgroundColor: Color(0xFF262626),
                                    foregroundColor: Color(0xFF262626),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Electrician',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.format_paint,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    backgroundColor: Color(0xFF262626),
                                    foregroundColor: Color(0xFF262626),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Painting',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.other_houses,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    backgroundColor: Color(0xFF262626),
                                    foregroundColor: Color(0xFF262626),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Carpenter',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.cleaning_services_sharp,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    backgroundColor: Color(0xFF262626),
                                    foregroundColor: Color(0xFF262626),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Cleaning',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.car_repair,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    backgroundColor: Color(0xFF262626),
                                    foregroundColor: Color(0xFF262626),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Car Cleaning',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.home_repair_service,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    backgroundColor: Color(0xFF262626),
                                    foregroundColor: Color(0xFF262626),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Car experts',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Stack(
                children: [
                  Text(
                    'Home Construction',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(right: 20, top: 5),
                    child: Text('View All',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 12,
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 40),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.construction,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    backgroundColor: Color(0xFF262626),
                                    foregroundColor: Color(0xFF262626),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Construction',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.architecture,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    backgroundColor: Color(0xFF262626),
                                    foregroundColor: Color(0xFF262626),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Architects',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.house_siding_outlined,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    backgroundColor: Color(0xFF262626),
                                    foregroundColor: Color(0xFF262626),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Interior Design',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.weekend,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    backgroundColor: Color(0xFF262626),
                                    foregroundColor: Color(0xFF262626),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Furniture',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(20),
                                    backgroundColor: Color(0xFF262626),
                                    foregroundColor: Color(0xFF262626),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Contractor',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Stack(children: [
                Text(
                  'Popular Services',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.only(right: 20, top: 5),
                  child: Text('View All',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 12,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(70),
                                child: Image.asset(
                                  'assets/images/plumber.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(70),
                                child: Image.asset(
                                  'assets/images/electrician.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(70),
                                child: Image.asset(
                                  'assets/images/painter1.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(70),
                                child: Image.asset(
                                  'assets/images/carpenter.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]),
            )
          ],
        ));
  }
}
