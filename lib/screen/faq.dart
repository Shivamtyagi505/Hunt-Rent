import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/sidebar.dart';

class Faqpage extends StatelessWidget {
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

            child: Text(
              "FAQ's",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff450808)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 38,
            // alignment: Alignment.center,
            child: Text(
              'Top Queries',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: FittedBox(
              child: Text(
                'Track your orders in “My Orders”',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
              height: 65,
              child: RaisedButton(
                  // shape: BorderRadius.circular(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'My Orders',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff460C54),
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {})),
          SizedBox(
            height: 18,
          ),
          Container(height: 2.0, width: double.infinity, color: Colors.grey),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[300],
            child: TextField(
              decoration: InputDecoration(labelText:'QUESTION',labelStyle: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,
              
              ),),
              keyboardType: TextInputType.multiline,
              maxLines: 3,
             
            ),
          ),SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey[300],
            child: TextField(
              decoration: InputDecoration(labelText:'ANSWER',labelStyle: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,
              
              ),),
              keyboardType: TextInputType.multiline,
              maxLines: 8,
             
            ),
          ),

        ]));
  }
}
