import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restaurant/helper/date_converter.dart';
import 'package:flutter_restaurant/helper/network_info.dart';
import 'package:flutter_restaurant/localization/language_constrants.dart';
import 'package:flutter_restaurant/provider/cart_provider.dart';
import 'package:flutter_restaurant/provider/splash_provider.dart';
import 'package:flutter_restaurant/utill/color_resources.dart';
import 'package:flutter_restaurant/utill/dimensions.dart';
import 'package:flutter_restaurant/utill/images.dart';
import 'package:flutter_restaurant/utill/styles.dart';
import 'package:flutter_restaurant/view/screens/auth/firebase_auth.dart';
import 'package:flutter_restaurant/view/screens/auth/signup_screen.dart';
import 'package:flutter_restaurant/view/screens/auth/social_test.dart';
import 'package:flutter_restaurant/view/screens/cart/cart_screen.dart';
import 'package:flutter_restaurant/view/screens/dashboard/explorer.dart';
import 'package:flutter_restaurant/view/screens/dashboard/order_tab.dart';
import 'package:flutter_restaurant/view/screens/home/home_screen.dart';
import 'package:flutter_restaurant/view/screens/menu/menu_screen.dart';
import 'package:flutter_restaurant/view/screens/order/order_screen.dart';
import 'package:flutter_restaurant/view/screens/prescreen/email/auth_signup_email.dart';
import 'package:flutter_restaurant/view/screens/wishlist/wishlist_screen.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({this.logstatus});
  final bool logstatus;
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final PageController _pageController = PageController();
  int _pageIndex = 0;
  List<Widget> _screens;
  GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey();

  @override
  void initState() {
    if (widget.logstatus == false) {
      Future.delayed(Duration(seconds: 0)).then((_) {
        // showModalBottomSheet(
        //     context: context,
        //     builder: (builder) {
        //       return Container();
        //     });

        showModalBottomSheet(
            context: context,
            builder: (builder) {
              return new Container(
                  height: 380.0,
                  color: Colors
                      .transparent, //could change this to Color(0xFF737373),
                  //so you don't have to change MaterialApp canvasColor
                  child: new Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(160.0),
                            topRight: const Radius.circular(160.0))),
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
                                  // ignore: deprecated_member_use
                                  ///<==== Facebook click button =====>
                                  FlatButton.icon(
                                    onPressed: () {
                                      // print("Button clicked!");
                                      // Navigator.of(context).pushReplacement(
                                      //     MaterialPageRoute(
                                      //         builder: (BuildContext context) =>
                                      //             AuthSignupEmail()));

                                      AuthClass()
                                          .signInWithFacebook()
                                          .then((UserCredential value) {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SocialHome()),
                                            (route) => false);
                                      });
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

                                  ///<==== Facebook click END =====>
                                  SizedBox(
                                    height: 10,
                                  ),
                                  // ignore: deprecated_member_use
                                  ///<==== Google click button =====>
                                  FlatButton.icon(
                                    onPressed: () {
                                      // print("Button clicked!");
                                      AuthClass()
                                          .signWithGoogle()
                                          .then((UserCredential value) {
                                        final displayName =
                                            value.user.displayName;

                                        print(displayName);

                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SocialHome()),
                                            (route) => false);
                                      });
                                    },
                                    label: Text(
                                      "Continue with Google",
                                    ),
                                    icon:

                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/Y9cGFriZ-[object Object]",
                                      width: 18.5,
                                      height: 18.5,
                                      fit: BoxFit.cover,
                                    ),
                                    color: Colors.white,
                                    textColor: Color(
                                      0xff646464,
                                    ),
                                    minWidth: 335,
                                    height: 51,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Color(
                                          0xff646464,
                                        ),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        30,
                                      ),
                                    ),
                                  ),

                                  ///<==== Google click END =====>
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
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  SignUpScreen()));
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
                  ));
            });
      });
    }

    super.initState();

    _screens = [
      //HomeScreen(),
      Explorer(),
      // CartScreen(),
      // OrderScreen(),
      // WishListScreen(),
      Ordertab(),
      Ordertab(),
      Ordertab(),
      MenuScreen(onTap: (int pageIndex) {
        _setPage(pageIndex);
      }),
    ];

    NetworkInfo.checkConnectivity(_scaffoldKey);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_pageIndex != 0) {
          _setPage(0);
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        key: _scaffoldKey,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: ColorResources.COLOR_GREY,
          showUnselectedLabels: true,
          currentIndex: _pageIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            _barItem(Icons.home, getTranslated('home', context), 0),
            _barItem(Icons.shopping_cart, getTranslated('cart', context), 1),
            _barItem(Icons.shopping_bag, getTranslated('order', context), 2),
            _barItem(Icons.favorite, getTranslated('favourite', context), 3),
            _barItem(Icons.menu, getTranslated('menu', context), 4)
          ],
          onTap: (int index) {
            _setPage(index);
          },
        ),
        appBar: Provider.of<SplashProvider>(context, listen: false)
                .isRestaurantClosed()
            ? AppBar(
                toolbarHeight: 40,
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 1,
                title:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.PADDING_SIZE_SMALL),
                      child: Image.asset(Images.closed, width: 25, height: 25)),
                  Text(
                    '${getTranslated('restaurant_is_close_now', context)} '
                    '${DateConverter.convertTimeToTime('${Provider.of<SplashProvider>(context, listen: false).configModel.restaurantOpenTime}:00')}',
                    style: rubikRegular.copyWith(
                        fontSize: 12, color: Colors.black),
                  ),
                ]),
              )
            : null,
        body: PageView.builder(
          controller: _pageController,
          itemCount: _screens.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return _screens[index];
          },
        ),
      ),
    );
  }

  BottomNavigationBarItem _barItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(icon,
              color: index == _pageIndex
                  ? ColorResources.COLOR_PRIMARY
                  : ColorResources.COLOR_GREY,
              size: 25),
          index == 1
              ? Positioned(
                  top: -7,
                  right: -7,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: Text(
                      Provider.of<CartProvider>(context)
                          .cartList
                          .length
                          .toString(),
                      style: rubikMedium.copyWith(
                          color: ColorResources.COLOR_WHITE, fontSize: 8),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
      label: label,
    );
  }

  void _setPage(int pageIndex) {
    setState(() {
      _pageController.jumpToPage(pageIndex);
      _pageIndex = pageIndex;
    });
  }
}
