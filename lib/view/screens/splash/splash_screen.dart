import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restaurant/localization/language_constrants.dart';
import 'package:flutter_restaurant/provider/auth_provider.dart';
import 'package:flutter_restaurant/provider/cart_provider.dart';
import 'package:flutter_restaurant/provider/splash_provider.dart';
import 'package:flutter_restaurant/provider/wishlist_provider.dart';
import 'package:flutter_restaurant/utill/images.dart';
import 'package:flutter_restaurant/view/screens/auth/signup_screen.dart';
import 'package:flutter_restaurant/view/screens/dashboard/dash_board.dart';
import 'package:flutter_restaurant/view/screens/dashboard/dash_screen.dart';
import 'package:flutter_restaurant/view/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_restaurant/view/screens/language/choose_language_screen.dart';
import 'package:flutter_restaurant/view/screens/order/order_screen.dart';

import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  GlobalKey<ScaffoldMessengerState> _globalKey = GlobalKey();
  StreamSubscription<ConnectivityResult> _onConnectivityChanged;

  @override
  void initState() {
    super.initState();

    bool _firstTime = true;
    _onConnectivityChanged = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if(!_firstTime) {
        bool isNotConnected = result != ConnectivityResult.wifi && result != ConnectivityResult.mobile;
        isNotConnected ? SizedBox() : _globalKey.currentState.hideCurrentSnackBar();
        _globalKey.currentState.showSnackBar(SnackBar(
          backgroundColor: isNotConnected ? Colors.red : Colors.green,
          duration: Duration(seconds: isNotConnected ? 6000 : 3),
          content: Text(
            isNotConnected ? getTranslated('no_connection', _globalKey.currentContext) : getTranslated('connected', _globalKey.currentContext),
            textAlign: TextAlign.center,
          ),
        ));
        if(!isNotConnected) {
          _route();
        }
      }
      _firstTime = false;
    });

    // Provider.of<SplashProvider>(context, listen: false).initSharedData();
    // Provider.of<CartProvider>(context, listen: false).getCartData();
    _route();

  }

  @override
  void dispose() {
    super.dispose();

    _onConnectivityChanged.cancel();
  }

  void _route() {
    Provider.of<SplashProvider>(context, listen: false).initConfig(_globalKey).then((bool isSuccess) {
      if (isSuccess) {
        Timer(Duration(seconds: 1), () async {
          //insert first if user is logedin
          if (Provider.of<AuthProvider>(context, listen: false).isLoggedIn()) {
            Provider.of<AuthProvider>(context, listen: false).updateToken();
            await Provider.of<WishListProvider>(context, listen: false).initWishList(context);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashboardScreen()));
          } else {
            bool logedin = false;
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashboardScreen(logstatus:logedin)));
          }
        });
      }
    });
  }
 
  //  void _route()
  //  {
        
  //       Timer(Duration(seconds: 1), () async {
  //         //insert first if user is logedin
  //         if (Provider.of<AuthProvider>(context, listen: false).isLoggedIn()) {
  //           Provider.of<AuthProvider>(context, listen: false).updateToken();
  //          // await Provider.of<WishListProvider>(context, listen: false).initWishList(context);
  //           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashboardScreen()));
  //         } else {
  //           bool logedin = false;
  //           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashboardScreen(logstatus:logedin)));
  //         }
  //       });
  //  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      // backgroundColor: Theme.of(context).primaryColor,
      backgroundColor: Color(0xffff4200),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Images.foodstick_logo, height: 165),
            SizedBox(height: 45),
            // Image.asset(Images.efood, height: 33),
          ],
        ),
      ),
    );
  }
}
