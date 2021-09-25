import 'dart:ui';

import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/sidebar.dart';

class Checkout extends StatelessWidget {
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
            'CHECKOUT',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff450808)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.yellow[200],
              border: Border.all(color: Colors.yellow[700]!)),
          alignment: Alignment.center,
          width: 300,
          height: 50,
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
                    text: 'ID: 73b933b055', style: new TextStyle(fontSize: 14)),
              ])),
        ),
        SizedBox(
          height: 28,
        ),
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.bottomLeft,
          child: Text(
            'Deliver to',
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w400,
                color: Color(0xff460C54)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(left: 10),
                width: 160,
                height: 160,
                color: Colors.grey[400],
                child: Center(
                    child: Text('MAP',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w400,
                        ))),
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Icon(
                            Icons.supervised_user_circle_sharp,
                            size: 28,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text('Jacob Anderson'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Icon(Icons.location_on),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                              'Jacob’s villa, Madukkummood P.O. Changanacherry'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.call),
                        ),
                        Expanded(
                         flex: 2,
                          child: Text('+91 9535589863'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
           Container(
            
             margin: EdgeInsets.all(18),
             height: 50,
             width: double.infinity,
             child: RaisedButton(
               
                  child: Text('Edit Address', style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,color: Color(0xff460C54)
                  ),),
                  color: Colors.white70,
                  elevation: 5,
                  onPressed: () {},
                ),
           ),
           SizedBox(
          height: 40,
        ),
        Container(
          width: double.infinity,
        height: 110,
        color:Color(0xff460C54) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
                margin: EdgeInsets.all(6),
                child: Text('Total items: 6',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                        )),
              ),
              Container(
                margin: EdgeInsets.all(6),
                child: Text('Total Price:  Rs. 2,262',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                        )),
             ),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
             margin: EdgeInsets.all(6),
                child: Text('Have a Coupon ?',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                        )),
              ),
              Container(
                 margin: EdgeInsets.all(6),
                width: 180,height: 30,
                color: Colors.white,
                  child: TextField(
                  decoration: InputDecoration( 
suffixIcon:RaisedButton(
  
 child: Text('Apply'),
 onPressed: (){},
 ),
 ),
                  )
             ),
            ],),
          ],
        ),
        ),
        SizedBox(height: 10,)
        , Container(
 margin: EdgeInsets.all(6),
              width: 300,
              height: 70,
              child: RaisedButton(onPressed:(){},
               shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),

                          color: Color(0xFFE8E8E8),
              child: Text('CONFIRM ORDER',style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.w500
              ),),
              ),
            ),

      ]),
      bottomNavigationBar: createBottomNavigationBar(),
    );
  }
}
