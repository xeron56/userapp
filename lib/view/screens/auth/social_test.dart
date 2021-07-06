import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restaurant/view/screens/auth/firebase_auth.dart';
import 'package:flutter_restaurant/view/screens/dashboard/dashboard_screen.dart';

class SocialHome extends StatefulWidget {
  SocialHome({Key key}) : super(key: key);

  @override
  _SocialHomeState createState() => _SocialHomeState();
}

class _SocialHomeState extends State<SocialHome> {
   String user = FirebaseAuth.instance.currentUser.email == null
      ? FirebaseAuth.instance.currentUser.phoneNumber
      : FirebaseAuth.instance.currentUser.email;
   String FName =   FirebaseAuth.instance.currentUser.displayName;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                //sign Out User
                AuthClass().signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                    (route) => false);
              })
        ],
      ),
      body: Center(
        child: Text("Name: $FName     Email: $user"),
        
        // Image.network(FirebaseAuth.instance.currentUser.photoURL),
        
        
      ),
    
    );
  }
}