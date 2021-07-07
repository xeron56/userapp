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
import 'package:flutter_restaurant/view/screens/forgot_password/verification_screen.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
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
                    SizedBox(height: 5),
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
              SizedBox(height: 35),
              CustomTextField(
                hintText: getTranslated('user_check', context),
                isShowBorder: true,
                inputAction: TextInputAction.done,
                inputType: TextInputType.emailAddress,
                controller: _emailController,
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
              // for continue button
              SizedBox(height: 130),
              !authProvider.isPhoneNumberVerificationButtonLoading
                  ? CustomButton(
                      btnTxt: getTranslated('continue', context),
                      onTap: () {
                        String _data = _emailController.text.trim();

                        String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                        RegExp regExp = new RegExp(patttern);

                        if (_data.length == 0) {
                          showCustomSnackBar(
                              getTranslated('enter_email_r_phone', context),
                              context);
                        } else if (!regExp.hasMatch(_data) &&
                            EmailChecker.isNotValid(_data)) {
                          showCustomSnackBar(
                              getTranslated(
                                  'enter_valid_email_r_phone', context),
                              context);
                        }

                        if (regExp.hasMatch(_data)) {
                          String _phone = _data;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => PhoneAuth()));

                          //   authProvider.checkPhone(_phone).then((value) async {
                          //   //if email not exist than >signup-account creation
                          //   if (value.isSuccess) {
                          //     authProvider.updatePhone(_phone);
                          //     if (value.message == 'active') {
                          //       Navigator.of(context).push(MaterialPageRoute(
                          //           builder: (_) => VerificationScreen(
                          //               emailAddress: _phone,
                          //               fromSignUp: true)));
                          //     } else {
                          //       Navigator.of(context).push(MaterialPageRoute(
                          //           builder: (_) => CreateAccountScreen()));
                          //     }
                          //   } else {
                          //     Navigator.of(context).push(MaterialPageRoute(
                          //         builder: (_) => LoginScreen()));
                          //   }
                          // });

                        }

                        if (!EmailChecker.isNotValid(_data)) {
                          String _email = _data;
                          authProvider.checkEmail(_email).then((value) async {
                            //if email not exist than >signup-account creation
                            if (value.isSuccess) {
                              authProvider.updateEmail(_email);
                              if (value.message == 'active') {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => VerificationScreen(
                                        emailAddress: _email,
                                        fromSignUp: true)));
                              } else {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => CreateAccountScreen()));
                              }
                            } else {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => LoginScreen()));
                            }
                          });
                        }
                      },
                    )
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
