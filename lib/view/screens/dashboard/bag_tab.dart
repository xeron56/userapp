import 'package:flutter/material.dart';

class Bagtab extends StatelessWidget {
  const Bagtab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Bag Tab',
          style: TextStyle(fontSize: 32.0),
       ),
       ),
    );
  }
}