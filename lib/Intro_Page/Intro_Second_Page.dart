import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/Intro_Page/Intro_Last_Slide.dart';

class Intro_Second_Page extends StatelessWidget {
  const Intro_Second_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/images/workerNew.jpg',
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
                'Qualified Professionals',
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
                ' Search from the list of Qualified Professionals around you as we bring the best one for you',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
