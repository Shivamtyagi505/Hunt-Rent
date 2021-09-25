import 'dart:ui';

import 'package:HuntandRent/components/appbar.dart';
import 'package:HuntandRent/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ProfileDetails extends StatefulWidget {
  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    List<bool> _selections = List.generate(2, (_)=> false);

      
    return Scaffold(
      appBar: MyAppbar(),

      drawer: MySidebar(),
      body: SingleChildScrollView(
        child: Column(
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
                'PROFILE DETAILS',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff450808)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: 120,
                  width: 120,
                  child: Image.asset('images/profileicon.png'),
                ),
                
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
            margin: EdgeInsets.all(10),
              child: IntlPhoneField(
    decoration: InputDecoration(
        labelText: 'Phone Number',
        border: OutlineInputBorder(
              borderSide: BorderSide(),
        ),
    ),
    initialCountryCode: 'IN',
    onChanged: (phone) {
        print(phone.completeNumber);
    },
),
            ),
        Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            
  // initialValue: 'Enter full name',
  decoration: InputDecoration(
    labelText: 'Full Name',
    // errorText: 'Error message',
    border: OutlineInputBorder(),

  ),
),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            
  // initialValue: 'Enter full name',
  decoration: InputDecoration(
    labelText: 'Email Address',
    // errorText: 'Error message',
    border: OutlineInputBorder(),

  ),
),
        ),
        ToggleButtons(
            
    children: <Widget>[
 Container(
      color: Color.fromRGBO(196, 196, 196, 0.33),
      height: 36,width: 180,
      child: Center(child: Text('Male',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)))),
   
        Container(
        color: Color.fromRGBO(196, 196, 196, 0.33),
      height: 36,width: 180,
      child: Center(child: Text('Female',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),))),
      
    ],
    isSelected: _selections,
    onPressed: (int index) {
      setState(() {
        _selections[index] = !_selections[index];
        
      });
    },
  ),
        Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            
  // initialValue: 'Enter full name',
  decoration: InputDecoration(
    hintText: 'Birthday',
    
    border: OutlineInputBorder(),

  ),
),
        ), Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            
  // initialValue: 'Enter full name',
  decoration: InputDecoration(
    hintText: 'Location',
    
    border: OutlineInputBorder(),

  ),
),
        ),




  SizedBox(
              height: 10,
            ),
  Container(
  child: Text('Alternative mobile number details'),),
Container(  margin: EdgeInsets.all(10),
  child:   IntlPhoneField(
      decoration: InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(
              borderSide: BorderSide(),
          ),
      ),
      initialCountryCode: 'IN',
      onChanged: (phone) {
          print(phone.completeNumber);
      },
  ),
),
  SizedBox(
              height: 10,
            ),
  Container(
  child: Text('In case you’ll need to recover your account'),),
SizedBox(
              height: 30,
            ),
Container(width: 300,
              height: 70,
              child: RaisedButton(onPressed:(){},
               shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),

                          color: Color(0xFFE8E8E8),
              child: Text('CHANGE PASSWORD',style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.w500
              ),),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: createBottomNavigationBar(),
    );
  }
}
