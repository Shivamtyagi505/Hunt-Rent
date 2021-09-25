import 'dart:ui';

import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/sidebar.dart';

class Qrthankyou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppbar(),
        drawer: MySidebar(),
        body: Column(children: [
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

          ),
          SizedBox(
            height: 20,
          ),
          Container(
           
            height: 38,
            // alignment: Alignment.center,
            child: Text(
              'THANK YOU',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700,color: Color.fromRGBO(70, 12, 84, 1)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
         Container(
            decoration: BoxDecoration(
 borderRadius:BorderRadius.circular(18),
           color: Colors.yellow[200],
    border: Border.all(color: Colors.yellow[700]!)
  ),
           alignment: Alignment.center,
           width: 300,height: 50,
           child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(color: Colors.black),
                                        children: <TextSpan>[
                                      TextSpan(
                                        text: 'ORDER ID : ',
                                        style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      new TextSpan(
                                          text: 'ID: 73b933b055',
                                          style: new TextStyle(fontSize: 14)),
           ])),
         ),
 SizedBox(
            height: 28,
          ),
          Container(
            width: 251,
              height: 65,
              child: RaisedButton(
                  // shape: BorderRadius.circular(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'Generate QR code',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {})),
          SizedBox(
            height: 80,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow:[BoxShadow(
               
                  color: Color.fromRGBO(0, 0, 0, 1),
                  offset: Offset(0, 0),
                  blurRadius: 0,
                  spreadRadius: 0,
                
              )]
            ),
            height: 190, width: 190,
            alignment: Alignment.center,
            child: Image.asset('images/qrcode.png',height: 190,fit: BoxFit.cover,),
            
          ),

        ])
        ,bottomNavigationBar: createBottomNavigationBar(),);
  }
}
