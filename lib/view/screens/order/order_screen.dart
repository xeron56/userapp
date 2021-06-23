import 'package:flutter/material.dart';
import 'package:flutter_restaurant/localization/language_constrants.dart';
import 'package:flutter_restaurant/provider/auth_provider.dart';
import 'package:flutter_restaurant/provider/order_provider.dart';
import 'package:flutter_restaurant/utill/color_resources.dart';
import 'package:flutter_restaurant/utill/dimensions.dart';
import 'package:flutter_restaurant/utill/styles.dart';
import 'package:flutter_restaurant/view/base/custom_app_bar.dart';
import 'package:flutter_restaurant/view/base/not_logged_in_screen.dart';
import 'package:flutter_restaurant/view/screens/order/widget/order_view.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> with TickerProviderStateMixin {
  TabController _tabController;
  bool _isLoggedIn;

  @override
  void initState() {
    super.initState();

    _isLoggedIn = Provider.of<AuthProvider>(context, listen: false).isLoggedIn();
    if(_isLoggedIn) {
      _tabController = TabController(length: 2, initialIndex: 0, vsync: this);
      Provider.of<OrderProvider>(context, listen: false).getOrderList(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: CustomAppBar(title: getTranslated('my_order', context),isBackButtonExist: false,),
      body: _isLoggedIn ? Consumer<OrderProvider>(
        builder: (context, order, child) {
          return Column(children: [

            Container(
              color: Theme.of(context).accentColor,
              child: TabBar(
                controller: _tabController,
                labelColor: Theme.of(context).textTheme.bodyText1.color,
                indicatorColor: ColorResources.COLOR_PRIMARY,
                indicatorWeight: 3,
                unselectedLabelStyle: rubikRegular.copyWith(color: ColorResources.COLOR_HINT, fontSize: Dimensions.FONT_SIZE_SMALL),
                labelStyle: rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                tabs: [
                  Tab(text: getTranslated('running', context)),
                  Tab(text: getTranslated('history', context)),
                ],
              ),
            ),

            Expanded(child: TabBarView(
              controller: _tabController,
              children: [
                OrderView(isRunning: true),
                OrderView(isRunning: false),
              ],
            )),

          ]);
        },
      ) : NotLoggedInScreen(),
    );
  }
}
