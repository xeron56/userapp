import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class DashScreen extends StatefulWidget {
  @override
  _DashScreenState createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  @override
  Widget build(BuildContext context) {
    return // Figma Flutter Generator MenustatustopbarWidget - INSTANCE
        Container(
          
          
            width: 375,
            height: 78,
            child: Stack(children: <Widget>[
              // Positioned(top: 0, left: 0, child: FlutterLogo(size: 24),),
              Positioned(
                  top: 7,
                  left: 11,
                  child: Container(
                    decoration: BoxDecoration(),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        FlutterLogo(size: 24),
                        SizedBox(height: 3),
                        Text(
                          'Explore',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(32, 32, 32, 1),
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  top: 7,
                  left: 82,
                  child: Container(
                    decoration: BoxDecoration(),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        FlutterLogo(size: 24),
                        SizedBox(height: 3),
                        Text(
                          'Orders',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(32, 32, 32, 1),
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  top: 0,
                  left: 152,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      color: Color.fromRGBO(248, 248, 248, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                            color: Color.fromRGBO(255, 66, 0, 1),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 17, vertical: 17),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              FlutterLogo(size: 24),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  top: 7,
                  left: 222,
                  child: Container(
                    decoration: BoxDecoration(),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        FlutterLogo(size: 24),
                        SizedBox(height: 3),
                        Text(
                          'Bag',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(32, 32, 32, 1),
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  top: 7,
                  left: 293,
                  child: Container(
                    decoration: BoxDecoration(),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                      FlutterLogo(size: 24),
                        SizedBox(height: 3),
                        Text(
                          'Profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(32, 32, 32, 1),
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  )),
            ]));
  }
}
