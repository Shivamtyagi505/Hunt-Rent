import 'package:HuntandRent/screen/tabBarscreens.dart';
import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/sidebar.dart';

class Address2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppbar(
      ),  
        drawer: MySidebar(),
        body: SingleChildScrollView(
                  child: Column(children: [
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
                "ADDRESS",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff450808)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 38,
              // alignment: Alignment.center,
              child: Text(
                'Enter Address Manually',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ),SizedBox(
              height: 20,
            ),
            Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              
  // initialValue: 'Enter full name',
  decoration: InputDecoration(
    hintText: 'House No./ Flat',
    
    border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
    
    ),
  ),
),
          ),Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              
  // initialValue: 'Enter full name',
  decoration: InputDecoration(
    hintText: 'Nearby Landmark',
    border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
    
    ),
  ),
),
          ),Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              
  // initialValue: 'Enter full name',
  decoration: InputDecoration(
    hintText: 'Local Area',
    
     border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
    
    ),
  ),
),
          ),Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              
  // initialValue: 'Enter full name',
  decoration: InputDecoration(
    hintText: 'Town',
    border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
    
    ),
  ),
),
          ),Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              
  // initialValue: 'Enter full name',
  decoration: InputDecoration(
    hintText: 'State',
    border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
    
    ),

  ),
),
          ),Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              
  // initialValue: 'Enter full name',
  decoration: InputDecoration(
    hintText: 'Birthday',
     border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
    
    ),
  ),
),
          ),
      //    
            Container(
              width: double.infinity,
        color: Color(0xff460C54),
            child: Column(
              children: [
              Container(
          child: FittedBox(
            child: Container(
              margin:EdgeInsets.all(8) ,
              width: 300,
              
              child: Text(
                'We use this to improve our services for you.',textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.white,),
              ),
            
          ),
      ), ),
      SizedBox(height: 28,),
      Container(
             margin:EdgeInsets.fromLTRB(0,0,0,15) ,
            height: 70,
            child: RaisedButton(
              onPressed: () {},
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Color(0xFFE8E8E8),
              child: Text(
                'Confirm Location',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
       )]),
            
          ),
   ]),
        ),
  bottomNavigationBar: createBottomNavigationBar(),
  );
  }
}
