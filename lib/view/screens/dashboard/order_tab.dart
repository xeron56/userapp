import 'package:flutter/material.dart';
import 'package:flutter_restaurant/view/screens/auth/signup_screen.dart';
import 'package:flutter_restaurant/view/screens/prescreen/auth_checking.dart';
import 'package:flutter_restaurant/view/screens/prescreen/auth_signup_otp.dart';
import 'package:flutter_restaurant/view/screens/prescreen/email/auth_signup_email.dart';

class Ordertab extends StatelessWidget {
  const Ordertab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Sign Up or Log In",
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
                      padding: EdgeInsets.all(
                        10,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlatButton.icon(
                            onPressed: () {
                              // print("Button clicked!");
                               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => AuthSignupEmail()));
                            },
                            label: Text(
                              "Continue with Facebook",
                            ),
                            icon:

                                /// Detected as Icon
                                /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                Image.network(
                              "https://resource-hosting.s3.us-west-1.amazonaws.com/Y8-UtGPz-[object Object]",
                              width: 18.5,
                              height: 18.5,
                              fit: BoxFit.cover,
                            ),
                            color: Color(
                              0xff1b76f2,
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
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: Text(
                              "or",
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
                            width: 16,
                            height: 16,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          // ignore: deprecated_member_use
                          FlatButton(
                            onPressed: () {
                              // 
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignUpScreen()));
                            },
                            child: Text(
                              "Continue with Email or OTP",
                            ),
                            textColor: Color(
                              0xff646464,
                            ),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(
                                  0xff929292,
                                ),
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                            ),
                            height: 51,
                            minWidth: 335,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "By continuing, you agree with our Terms & Conditions",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child:

                          /// Detected as Icon
                          /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                          Image.network(
                        "https://resource-hosting.s3.us-west-1.amazonaws.com/mxkRYRpR-[object Object]",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                      padding: EdgeInsets.all(
                        10,
                      ),
                      decoration: BoxDecoration(
                        color: Color(
                          0xfff8f8f8,
                        ),
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(
                  20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
            ),
          ),
        );
  }
}