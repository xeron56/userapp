import 'package:flutter/material.dart';
import 'package:flutter_restaurant/localization/language_constrants.dart';
import 'package:flutter_restaurant/view/base/custom_text_field.dart';
import 'package:flutter_restaurant/view/screens/prescreen/auth_signup_otp.dart';

class AuthChecking extends StatefulWidget {
  AuthChecking({Key key}) : super(key: key);

  @override
  _AuthCheckingState createState() => _AuthCheckingState();
}

class _AuthCheckingState extends State<AuthChecking> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            /// wrap:positioned of "Frame 737"

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
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/n3Rtanmi-[object Object]",
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
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/oS6erRxF-[object Object]",
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
                                        "Hi, there!",
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
                                        "Will check, if you have any account.",
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
                                  child: Container(
                                    child: SizedBox(
                                      child: CustomTextField(
                                        hintText: getTranslated(
                                            'user_check', context),
                                        isShowBorder: true,
                                        inputAction: TextInputAction.done,
                                        inputType: TextInputType.emailAddress,
                                        controller: _emailController,
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
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 170,
                          ),
                          // ignore: deprecated_member_use
                          FlatButton.icon(
                            onPressed: () {
                              // print("Button clicked!");
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          AuthSignupOtp()));
                            },
                            label: Text(
                              "Continue",
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
                            icon:

                                /// Detected as Icon
                                /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                Image.network(
                              "https://resource-hosting.s3.us-west-1.amazonaws.com/-eGOU-ku-[object Object]",
                              width: 18.5,
                              height: 18.5,
                              fit: BoxFit.cover,
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
