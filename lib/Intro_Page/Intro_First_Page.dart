import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/Intro_Page/Intro_Second_Page.dart';

class Intro_first_page extends StatelessWidget {
  const Intro_first_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/images/room.jpg',
              ),
              fit: BoxFit.cover,
            )),
          ),

          Container(
            alignment: Alignment.bottomCenter,
            child: const BlurryContainer(
                blur: 30,
                width: 500,
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.all(160.0),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Center(
              child: Text(
                'Give Your Home a Makeover',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500),
            child: Center(
              child: Text(
                'The best services that you could find for your home, as we have everything that you are in need',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
            ),
          ),
          // Positioned(
          //     top: 750,
          //     right: 10,
          //     child: IconButton(icon: const Icon(Icons.arrow_circle_right_sharp), onPressed: (  ) {
          //       Navigator.push(context, MaterialPageRoute(builder: (context)=> const Intro_Second_Page()));
          //     },iconSize: 50,)
          // ),
        ],
      ),
    );
  }
}
