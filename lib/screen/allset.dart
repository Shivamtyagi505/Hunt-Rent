import 'package:flutter/material.dart';

class Allset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
          Container(
            child: Center(
              child: Text(
                'YOU ARE ALL SET! ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff450808),
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            height: 40,
            margin: EdgeInsets.only(top:170),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Color(0xFFBD9D02),
              Color(0xFFFFF1A5),
              Color(0xFFFFF1A5),
               Color(0xFFFFF1A5),
               Colors.white,
            ])),
           
          ),
        Container(
            padding: EdgeInsets.fromLTRB(0,160,0,0),
        width: 300,
          child:Image.asset('images/allset.png',fit: BoxFit.fill
          ,)
        ),
        ],
      ),
    );
  }
}
