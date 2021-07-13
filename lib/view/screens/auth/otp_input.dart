import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restaurant/helper/email_checker.dart';
import 'package:flutter_restaurant/helper/phone_check.dart';
import 'package:flutter_restaurant/localization/language_constrants.dart';
import 'package:flutter_restaurant/provider/auth_provider.dart';
import 'package:flutter_restaurant/utill/color_resources.dart';
import 'package:flutter_restaurant/utill/dimensions.dart';
import 'package:flutter_restaurant/utill/images.dart';
import 'package:flutter_restaurant/view/base/custom_button.dart';
import 'package:flutter_restaurant/view/base/custom_snackbar.dart';
import 'package:flutter_restaurant/view/base/custom_text_field.dart';
import 'package:flutter_restaurant/view/screens/auth/create_account_screen.dart';
import 'package:flutter_restaurant/view/screens/auth/fire_otp.dart';
import 'package:flutter_restaurant/view/screens/auth/login_screen.dart';
import 'package:flutter_restaurant/view/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_restaurant/view/screens/forgot_password/verification_screen.dart';
import 'package:provider/provider.dart';

class OtpInput extends StatefulWidget {
  OtpInput({Key key}) : super(key: key);

  @override
  _OtpInputState createState() => _OtpInputState();
}

// class _OtpInputState extends State<OtpInput> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//        child: null,
//     );
//   }
// }

class _OtpInputState extends State<OtpInput> {
  String phoneNumber;
  String verificationCode;

  // TextEditingController otpController; // have otp
  // TextEditingController phoneController; //have phone number

  TextEditingController _otpController;

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String verificationId;

  @override
  void initState() {
    // otpController = TextEditingController();
    // phoneController = TextEditingController();
    _otpController = TextEditingController();

    super.initState();
  }

  Future<void> verifyPhone(phoneNo) async {
    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
      verificationId = verId;
    };

    final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]) {
      verificationId = verId;
    };

    final PhoneVerificationCompleted verifiedSuccess = (AuthCredential auth) {
      firebaseAuth.signInWithCredential(auth).then((UserCredential value) {
        if (value.user != null) {
          User user = value.user;
          userAuthorized();
        } else {
          debugPrint('user not authorized');
        }
      }).catchError((error) {
        debugPrint('error : $error');
      });
    };

    final PhoneVerificationFailed veriFailed =
        (FirebaseAuthException exception) {
      print('${exception.message}');
    };
//AuthException
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNo,
        codeAutoRetrievalTimeout: autoRetrieve,
        codeSent: smsCodeSent,
        timeout: const Duration(seconds: 5),
        verificationCompleted: verifiedSuccess,
        verificationFailed: veriFailed);
  }

  void verifyOTP(String smsCode) async {
    var _authCredential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
    firebaseAuth
        .signInWithCredential(_authCredential)
        .then((UserCredential result) {
      User user = result.user;

      if (user != null) {
        userAuthorized();
      }

      ///go To Next Page
    }).catchError((error) {
      Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => DashboardScreen()));
      // Navigator.pop(context);
    });
  }

  userAuthorized() {
    print('can go to next page');
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => DashboardScreen()));
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<AuthProvider>(context, listen: false)
        .clearVerificationMessage();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
        child: Consumer<AuthProvider>(
          builder: (context, authProvider, child) => ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(Images.foodstick_moto,
                    matchTextDirection: true),
              ),
              SizedBox(height: 20),
              // Center(
              //     child: Text(
              //   getTranslated('signup', context),
              //   style: Theme.of(context).textTheme.headline3.copyWith(fontSize: 24, color: ColorResources.getGreyBunkerColor(context)),
              // )),
              // SizedBox(height: 35),
              // Text(
              //   getTranslated('email', context),
              //   style: Theme.of(context).textTheme.headline2.copyWith(color: ColorResources.getHintColor(context)),
              // ),
              // SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "AlMost Done!",
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
                    SizedBox(height: 5),
                    Text(
                      "We have sent you an otp",
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
              SizedBox(height: 35),
              CustomTextField(
                hintText: getTranslated('otp', context),
                isShowBorder: true,
                inputAction: TextInputAction.done,
                inputType: TextInputType.emailAddress,
                controller: _otpController,
              ),
              SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  authProvider.verificationMessage.length > 0
                      ? CircleAvatar(
                          backgroundColor:
                              ColorResources.getPrimaryColor(context),
                          radius: 5)
                      : SizedBox.shrink(),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      authProvider.verificationMessage ?? "",
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            fontSize: Dimensions.FONT_SIZE_SMALL,
                            color: ColorResources.getPrimaryColor(context),
                          ),
                    ),
                  )
                ],
              ),
              // for sign button
              SizedBox(height: 130),
              !authProvider.isPhoneNumberVerificationButtonLoading
                  ? CustomButton(
                      btnTxt: getTranslated('signup', context),
                      onTap: () {
                        String _data = _otpController.text.trim();
                        if (_data.length == 0) {
                          showCustomSnackBar(
                              getTranslated('otp_valid_input', context),
                              context);
                        }
                        verifyOTP(_data);

                        // String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                        // RegExp regExp = new RegExp(patttern);

                        // if (_data.length == 0) {
                        //   showCustomSnackBar(
                        //       getTranslated('otp_valid_input', context),
                        //       context);
                        // } else if (!regExp.hasMatch(_data) &&
                        //     EmailChecker.isNotValid(_data)) {
                        //   showCustomSnackBar(
                        //       getTranslated(
                        //           'enter_valid_email_r_phone', context),
                        //       context);
                        // }

                        // if (regExp.hasMatch(_data)) {
                        //   String _phone = _data;
                        //   Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (_) => PhoneAuth()));

                        //     authProvider.checkPhone(_phone).then((value) async {
                        //     //if email not exist than >signup-account creation
                        //     if (value.isSuccess) {
                        //       authProvider.updatePhone(_phone);
                        //       if (value.message == 'active') {
                        //         Navigator.of(context).push(MaterialPageRoute(
                        //             builder: (_) => VerificationScreen(
                        //                 emailAddress: _phone,
                        //                 fromSignUp: true)));
                        //       } else {
                        //         Navigator.of(context).push(MaterialPageRoute(
                        //             builder: (_) => CreateAccountScreen()));
                        //       }
                        //     } else {
                        //       Navigator.of(context).push(MaterialPageRoute(
                        //           builder: (_) => LoginScreen()));
                        //     }
                        //   });

                        // }

                        // if (!EmailChecker.isNotValid(_data)) {
                        //   String _email = _data;
                        //   authProvider.checkEmail(_email).then((value) async {
                        //     // success=true means email exist
                        //     if (value.isSuccess) {
                        //       // authProvider.updateEmail(_email);
                        //       // if (value.message == 'active') {
                        //       //   Navigator.of(context).push(MaterialPageRoute(
                        //       //       builder: (_) => VerificationScreen(
                        //       //           emailAddress: _email,
                        //       //           fromSignUp: true)));
                        //       Navigator.of(context).push(MaterialPageRoute(
                        //           builder: (_) => LoginScreen()));
                        //       } else {
                        //         Navigator.of(context).push(MaterialPageRoute(
                        //             builder: (_) => CreateAccountScreen()));
                        //       }
                        //     }
                        //   );
                        // }
                      },
                    )
                  //if
                  : Center(
                      child: CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(
                          ColorResources.COLOR_PRIMARY),
                    )),

              // for create an account
              SizedBox(height: 10),
              // InkWell(
              //   onTap: () {
              //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text(
              //           getTranslated('already_have_account', context),
              //           style: Theme.of(context).textTheme.headline2.copyWith(fontSize: Dimensions.FONT_SIZE_SMALL, color: ColorResources.getGreyColor(context)),
              //         ),
              //         SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
              //         Text(
              //           getTranslated('login', context),
              //           style: Theme.of(context)
              //               .textTheme
              //               .headline3
              //               .copyWith(fontSize: Dimensions.FONT_SIZE_SMALL, color: ColorResources.getGreyBunkerColor(context)),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
