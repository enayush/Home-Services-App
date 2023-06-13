import 'package:flutter/material.dart';

class plumbing extends StatefulWidget {
  const plumbing({super.key});

  @override
  State<plumbing> createState() => _plumbingState();
}

class _plumbingState extends State<plumbing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Plumbers', style: TextStyle(fontSize: 17)),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );

  }
}
