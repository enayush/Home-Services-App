import 'package:flutter/material.dart';

class Bookings extends StatelessWidget {
  const Bookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Bookings', style: TextStyle(fontSize: 17)),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Text('No Bookings',
              style: TextStyle(fontSize: 17, color: Colors.white))),
    );
  }
}
