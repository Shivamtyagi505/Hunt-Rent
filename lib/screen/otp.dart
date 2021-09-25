import 'dart:ui';

import 'package:flutter/material.dart';
import '../main.dart';

class Otp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bghuntrent.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('images/hrlogo.jpeg'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/login1rect.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80,width: 330,
                        padding: EdgeInsets.only(top: 20,left: 33,right: 10),
                        child: RichText(
 
                            text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: <TextSpan>[
                              TextSpan(
                                text: 'An otp has successfully ',
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              new TextSpan(
                                
                                  text: 'sent on XXXXXXXX@gmail.com',
                                  style: new TextStyle(fontSize: 16)),
                            ])),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _otpTextField(1),
                          _otpTextField(2),
                          _otpTextField(2),
                          _otpTextField(0)
                        ],
                      ),
                      FittedBox(
                        child: Container(
                            padding: EdgeInsets.fromLTRB(90, 10, 0, 0),
                            child: Text(
                              '(00:01)Resend!',
                              style: TextStyle(
                                  color: Color(0xFF013768),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(100, 20, 0, 0),
                        child: formbuttons(
                            text: 'Verify', onpress: () {}, width: 220),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _otpTextField(int digit) {
  return new Container(
      margin: EdgeInsets.all(7),
      width: 40.0,
      height: 60.0,
      alignment: Alignment.center,
      child: new Text(
        digit != null ? digit.toString() : "",
        style: new TextStyle(
          fontSize: 30.0,
          color: Colors.black,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFEEEDED),
      ));
}
