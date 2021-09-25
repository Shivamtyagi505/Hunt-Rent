import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:HuntandRent/main.dart';

class Addscreen extends StatefulWidget {
  @override
  _AddscreenState createState() => _AddscreenState();
}

class _AddscreenState extends State<Addscreen> {
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
                      'images/shopAddrect.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  FittedBox(
                    // padding: EdgeInsets.only(left: 71),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 71),
                          margin: EdgeInsets.all(10),
                          child: Text(
                            'Shop Address',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 87,top:15),
                            width: 250,
                            height: 110,
                            // margin: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: const Offset(
                                      -2.0,
                                      -2.0,
                                    ),
                                    blurRadius: 1.0,
                                    spreadRadius: 1.0,
                                  )
                                ],
                                color: Color(0xffEEEDED),
                                borderRadius: BorderRadius.circular(27)),
                            // padding: EdgeInsets.fromLTRB(60, 42, 0, 0),
                            child: new TextField(
                              
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              keyboardType: TextInputType.multiline,
                              maxLines: 3,
                            )),
 Container(
                                  margin: EdgeInsets.fromLTRB(88, 15, 0, 0),
                                  child: Text(
                                    'Be sure to include fill in the exact address!*',
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 12,
                                        // fontWeight: FontWeight.w700),
                              ))),

             Container(
                                  padding: EdgeInsets.fromLTRB(88, 15, 0, 0),
                                  child: Text(
                                    'I accept the terms and conditions \n offered by XXXX',
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  )),
                                              Container(
                            margin: EdgeInsets.fromLTRB(92, 20, 0, 0),
                            child: formbuttons(
                                text: 'Register Shop', onpress: () {},width: 243),
                          )
                            

                      ],
                    ),
                  )
                ],
              ),
               Container(
            margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
            width: 300,
            height: 4,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Color(0xFFBD9D02),
              Color(0xFFFFF1A5),
              Color(0xFFFFF1A5),
            ])),
          ),
          Container(
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Already a member?',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
            ],
          ),
        ],
      ),
    );
  }
}
