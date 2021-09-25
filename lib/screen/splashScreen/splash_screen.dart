import 'dart:async';

import 'package:HuntandRent/widgets/shared.dart';
import 'package:flutter/material.dart';

import '../home.dart';
import '../login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    _data() async {
    try {
      Timer(
          Duration(seconds: 3),
          (await SharedData().userLogged())
              ? () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomePage()))
              : () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Login())));
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _data();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
                  child: CircleAvatar(
                    radius: 44.0,
                    backgroundImage: AssetImage(
                      'images/hrlogo.jpeg',
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset('images/onboard1.png'),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 70,vertical: 10),
                  child: Text('Rent anything being anywhere on the e-store Hunt & Rent!',style: TextStyle(fontSize: 15),textAlign: TextAlign.center,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
