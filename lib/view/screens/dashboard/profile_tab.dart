import 'package:flutter/material.dart';

class Profiletab extends StatefulWidget {
  Profiletab({Key key}) : super(key: key);

  @override
  _ProfiletabState createState() => _ProfiletabState();
}

class _ProfiletabState extends State<Profiletab> {
@override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Profile Tab',
          style: TextStyle(fontSize: 32.0),
       ),
       ),
    );
  }
}