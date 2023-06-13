import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:firstapp/Intro_Page/Intro_First_Page.dart';
import 'package:firstapp/Intro_Page/Intro_Last_Slide.dart';
import 'package:firstapp/Intro_Page/Intro_Second_Page.dart';
import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/Home_page/Home_Page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            Intro_first_page(),
            Intro_Second_Page(),
            Intro_Last_Slide(),
          ],
        ),
        Container(
            alignment: Alignment(0.9, 0.3),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ScrollingDotsEffect(
                  dotHeight: 7,
                  dotWidth: 10,
                  dotColor: Colors.white10,
                  activeDotColor: Colors.white),
            )),
        isLastPage
            ? Container(
                alignment: Alignment(0.9, 0.9),
                child: ElevatedButton(
                  child: Text(
                    'Done',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, shape: StadiumBorder()),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => home_page()),
                    );
                  },
                ))
            : Container(
                alignment: Alignment(0.9, 0.9),
                child: IconButton(
                  icon: Icon(Icons.arrow_circle_right_sharp),
                  onPressed: () => _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInCubic),
                  iconSize: 50,
                  color: Colors.white,
                )),
      ]),
    );
  }
}
