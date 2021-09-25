import 'dart:ui';

import 'package:HuntandRent/components/appbar.dart';
import 'package:HuntandRent/components/sidebar.dart';
import 'package:flutter/material.dart';

class Profilepg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                'MY ORDERS',
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
                Container(
                  child: Text(
                    'NAME',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff450808)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            profileCard('My Orders', 'Check your order details here!', () {},Icons.shopping_bag),
            profileCard('Help Center', 'Need help ?', () {},Icons.question_answer),
            profileCard('Wishlist', 'You saved this for later', () {},Icons.favorite),
            profileCard('Coupons', 'Manage coupons for additional discounts', () {},Icons.disc_full_outlined),
            profileCard('Profile Details', 'Modify and update your profile ', () {},Icons.supervised_user_circle),
            profileCard('Settings', 'Manage your app settings', () {},Icons.settings),

            Container(

              width: 300,
              height: 70,
              child: RaisedButton(onPressed:(){},
               shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),

                          color: Color(0xFFE8E8E8),
              child: Text('LOG OUT',style: TextStyle(
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

Widget profileCard(
  String title,
  String subtitle,
  Function ontapped,
  IconData sample
) {
  return InkWell(
    onTap: ontapped(),
    child: Card(
      child: Container(
        color: Color.fromRGBO(196, 196, 196, 0.14),
        width: double.infinity,
        height: 80,
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              width: 40,
              child: Icon(sample),
            ),
            SizedBox(
              width: 15,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    subtitle,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  )),
            ]),
          ],
        ),
      ),
    ),
  );
}
