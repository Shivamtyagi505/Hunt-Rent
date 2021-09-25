import 'dart:ui';

import 'package:HuntandRent/components/appbar.dart';
import 'package:HuntandRent/components/sidebar.dart';
import 'package:flutter/material.dart';

class Noorder extends StatelessWidget {
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
                         
                          
            ])          
         ),        
            //  color: Colors.black,
            alignment: Alignment.center,

          child:Text('MY ORDERS',style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xff450808)
          ),),
          
        ),
          Container(
            padding: EdgeInsets.fromLTRB(40,50,0,0),
        width: 400,
          child:Image.asset('images/emoji1.png',fit: BoxFit.fill
          ,)
        ),
        Container(
            padding: EdgeInsets.only(left:20),
        
          child:Text('No Orders yet',style: TextStyle(
            fontSize: 30,fontWeight: FontWeight.w400)),
         
        ),Container(
            padding: EdgeInsets.only(left:20),
        margin: EdgeInsets.all(24),
          child:Text('You have not ordered anything yet',style: TextStyle(
            fontSize: 16,)),
         
        ),
        Container(
   
          width: 300,
          height: 70,
          child: RaisedButton(onPressed:(){},
           shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    
                      color: Color(0xFFE8E8E8),
          child: Text('Continue Shopping',style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.w500
          ),),
          ),
        ),
        ],
              
      ),
      // bottomNavigationBar: createBottomNavigationBar(),
  );
              
           
  }
}
