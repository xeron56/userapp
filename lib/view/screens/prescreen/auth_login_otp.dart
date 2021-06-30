

import 'package:flutter/material.dart';
import 'package:flutter_restaurant/view/screens/dashboard/dash_board.dart';

class AuthLoginOtp extends StatefulWidget {
  AuthLoginOtp({Key key}) : super(key: key);

  @override
  _AuthLoginOtpState createState() => _AuthLoginOtpState();
}

class _AuthLoginOtpState extends State<AuthLoginOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            /// wrap:positioned of "Frame 737"
            // Positioned.fill(
            //   child: Align(
            //     alignment: Alignment.topLeft,
            //     child: Container(
            //       child:

            //           /// Detected as Icon
            //           /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
            //           Image.network(
            //         "https://resource-hosting.s3.us-west-1.amazonaws.com/IDtPIi2N-[object Object]",
            //         width: 18.5,
            //         height: 18.5,
            //         fit: BoxFit.cover,
            //       ),
            //       padding: EdgeInsets.all(
            //         15,
            //       ),
            //     ),
            //   ),
            // ),
            
            Positioned(
              left: 0,
              top: 30,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          /// Detected as Icon
                          /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                          Image.network(
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/0kyfesjT-[object Object]",
                            width: 21,
                            height: 21,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            child: Text(
                              "",
                              style: TextStyle(
                                color: Color(
                                  0xff929292,
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                              ),
                            ),
                            width: 227,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            child: Text(
                              "",
                              style: TextStyle(
                                color: Color(
                                  0xffff4200,
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                              ),
                            ),
                            width: 67,
                            height: 21,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Container(
                      width: 197,
                      height: 193,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/ZtA8S7Kx-[object Object]",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Log In",
                                        style: TextStyle(
                                          color: Color(
                                            0xff646464,
                                          ),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Poppins",
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "We have sent you an OTP.",
                                        style: TextStyle(
                                          color: Color(
                                            0xff646464,
                                          ),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: SizedBox(
                                          child: Text(
                                            "+880 1754 558 666",
                                            style: TextStyle(
                                              color: Color(
                                                0xff646464,
                                              ),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          width: 303,
                                        ),
                                        padding: EdgeInsets.all(
                                          16,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: SizedBox(
                                          child: Text(
                                            "OTP",
                                            style: TextStyle(
                                              color: Color(
                                                0xff646464,
                                              ),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          width: 303,
                                        ),
                                        padding: EdgeInsets.all(
                                          16,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 150,
                          ),
                          FlatButton.icon(
                            onPressed: () {
                              // print("Button clicked!");
                               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashBoard()));
                            },
                            label: Text(
                              "Log In",
                            ),
                            icon:

                                /// Detected as Icon
                                /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                Image.network(
                              "https://resource-hosting.s3.us-west-1.amazonaws.com/-E1EiujT-[object Object]",
                              width: 18.5,
                              height: 18.5,
                              fit: BoxFit.cover,
                            ),
                            color: Color(
                              0xffff4200,
                            ),
                            textColor: Colors.white,
                            minWidth: 335,
                            height: 51,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
            Container(),
          ],
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
      ),
    );
  }
}