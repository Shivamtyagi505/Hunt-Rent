import 'package:HuntandRent/screen/mywishlist.dart';
import 'package:flutter/material.dart';
import '../components/appbar.dart';
import '../components/sidebar.dart';

class Bookmark extends StatefulWidget {
  @override
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
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
            "YOUR BOOKMARKS",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff450808)),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 30,
            ),
            orderCard(),
             orderCard(),
            orderCard(),
          ],
        )
      ]),
      bottomNavigationBar: createBottomNavigationBar(),
    );
  }
}
