import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Account', style: TextStyle(fontSize: 17)),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Text('', style: TextStyle(fontSize: 17, color: Colors.white))),
    );
  }
}
