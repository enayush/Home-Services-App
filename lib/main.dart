import 'package:firstapp/Intro_Page/Home_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/Intro_Page/Home_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homescreen(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.lightGreen,
//         title: Text("Home Page"),
//       ),
//       body: Container(
//         child: Center(
//           child: Text("Homepage Content"),
//         ),
//
//       ),
//     );
//   }
// }
