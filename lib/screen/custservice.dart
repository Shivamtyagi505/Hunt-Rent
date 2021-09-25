import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:HuntandRent/components/appbar.dart';
import 'package:HuntandRent/components/sidebar.dart';

class Custservice extends StatelessWidget {
  // double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),

      drawer: MySidebar(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 43,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    // begin: Alignment.topLeft,
                    //   end: Alignment.bottomRight,
                    colors: <Color>[
                  Color(0xFFBD9D02),
                  Color(0xFFFFF1A5),
                  Color(0xFFFFF1A5),
                ])),
            //  color: Colors.black,
            alignment: Alignment.center,

            child: Text(
              'CUSTOMER SERVICE',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff450808)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(55, 55, 55, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(30),
                  child: Icon(
                    Icons.call,
                    size: 30,
                  ),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 80, 0),
                    child: Text(
                      'Phone No.',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                      child: Text(
                    '+91 98765-43210',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ))
                ])
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(55, 0, 55, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(30),
                  child: Icon(
                    Icons.email,
                    size: 30,
                  ),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 110, 0),
                    child: Text(
                      'Email.',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                      child: Text(
                    'abcd@gmail.com',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ))
                ])
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            width: 345,
            height: 45,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                color: Color(0xff460C54),
                child: Text(
                  'About Us',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                onPressed: () {}),
          ),
          Container(
              margin: EdgeInsets.all(18),
              decoration: BoxDecoration(
                border: Border.all(
      // color: Colors.yellowAccent[800],
      color: Color(0xfffBC02d),
     
    ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    )
                  ],
                  color: Color(0xFFFFF1A5),
                  // border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(27)),
              padding: EdgeInsets.fromLTRB(18, 42, 0, 0),
              child: new TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 8,
              )),
        ],
      ),
 
    );
  }
}
