import 'dart:ui';

import 'package:HuntandRent/components/appbar.dart';
import 'package:HuntandRent/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CategoryLayout extends StatefulWidget {
  @override
  _CategoryLayoutState createState() => _CategoryLayoutState();
}

class _CategoryLayoutState extends State<CategoryLayout> {
  @override
  Widget build(BuildContext context) {
    List<String> imgurl = ['', ''];
    // List<bool> _selections = List.generate(2, (_)=> false);

    return Scaffold(
      appBar: MyAppbar(),

      drawer: MySidebar(),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
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
                alignment: Alignment.centerLeft,

                child: Row(
                  children: [
                    Icon(Icons.location_on),
                    Text(
                      'Select Delivery Location',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff450808)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(25),
                    child: Text('Categories',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ))),
                Spacer(),
                Container(
                    padding: EdgeInsets.all(25),
                    child: Text('See All',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ))),
              ],
            ),
            SingleChildScrollView(
 scrollDirection: Axis.horizontal,
              child: Row(

                 children: [
                   Categoriescards(categoryimages: 'images/dress.png'),

            Categoriescards(categoryimages: 'images/dress4.png'),
            Categoriescards(categoryimages: 'images/dress4.png'),
                 ],
                  ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: createBottomNavigationBar(),
    );
  }
}

class Categoriescards extends StatelessWidget {
  final categoryimages;
// final int index;
  const Categoriescards({
    Key? key,
    required this.categoryimages,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return 
      Row(
              children: [
                SizedBox(width: 10,),
                Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.red,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
                width: 130,
                height: 200,
                child: Image.asset(
                  categoryimages,
                  fit: BoxFit.cover,
                ))),
                SizedBox(width: 20,)
              ],
      ); }
}
