import 'package:flutter/material.dart';
import 'package:flutter_restaurant/view/screens/dashboard/bag_tab.dart';
import 'package:flutter_restaurant/view/screens/dashboard/explorer.dart';
import 'package:flutter_restaurant/view/screens/dashboard/fab_bottom_app_bar.dart';
import 'package:flutter_restaurant/view/screens/dashboard/fab_with_icons.dart';
import 'package:flutter_restaurant/view/screens/dashboard/layout.dart';
import 'package:flutter_restaurant/view/screens/dashboard/order_tab.dart';
import 'package:flutter_restaurant/view/screens/dashboard/profile_tab.dart';


class DashBoard extends StatefulWidget {
  // DashBoard({Key key, this.title}) : super(key: key);

  // final String title='testman';

  @override
  _DashBoardState createState() => new _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with TickerProviderStateMixin {
  int _lastSelected = 0;
  final List<Widget> _children =[
    Explorer(),
    Ordertab(),
    Bagtab(),
    Profiletab()
    
  ];

  void _selectedTab(int index) {
    setState(() {
      
      _lastSelected = index;
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text(widget.title),
      // ),
      // body: Center(
      //   child: Text(
      //     _lastSelected,
      //     style: TextStyle(fontSize: 32.0),
      //   ),
      // ),
      body: _children[_lastSelected],
    
      bottomNavigationBar: FABBottomAppBar(
        // centerItemText: 'A',
        color: Colors.grey,
        selectedColor: Colors.red,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.flag, text: 'Explore'),
          FABBottomAppBarItem(iconData: Icons.book_rounded, text: 'orders'),
          FABBottomAppBarItem(iconData: Icons.badge, text: 'Bag'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'Profile'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab(
          context), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildFab(BuildContext context) {
    final icons = [ Icons.sms, Icons.mail, Icons.phone ];
    return AnchoredOverlay(
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - icons.length * 35.0),
          child: FabWithIcons(
            icons: icons,
            onIconTapped: _selectedFab,
          ),
        );
      },
      child: FloatingActionButton(
        onPressed: () { },
        tooltip: 'Increment',
        child: Icon(Icons.home),
        elevation: 2.0,
      ),
    );
  }
}
