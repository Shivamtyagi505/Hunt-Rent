import 'package:flutter/material.dart';

class Nointernet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
              child: Stack(children: [
            Center(
                child: Image.asset(
              'images/nointernet.png',
              scale: 0.8,
            )),
   Container(
              padding: EdgeInsets.fromLTRB(138, 360, 0, 0),
            
              child: Text(
                'OOPS....',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(189, 157, 2, 1),
                ),
              )),
              Container(
                
                    padding: EdgeInsets.fromLTRB(30, 430, 0, 0),
                child: FittedBox(
            
                  child: Text(
         'Check your internet connection !',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),
       ),),
              )
          ])),
       
        ],
      ),
    );
  }
}
