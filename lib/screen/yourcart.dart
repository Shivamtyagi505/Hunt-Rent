import 'package:HuntandRent/screen/mywishlist.dart';
import 'package:countdown_flutter/countdown_flutter.dart';
import 'package:flutter/material.dart';
import '../components/appbar.dart';
import '../components/sidebar.dart';

class Yourcart extends StatefulWidget {
  @override
  _YourcartState createState() => _YourcartState();
}

class _YourcartState extends State<Yourcart> {
  //  var _done = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MySidebar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 43,
            decoration: BoxDecoration(
                gradient: LinearGradient(
             
                    colors: <Color>[
                  Color(0xFFBD9D02),
                  Color(0xFFFFF1A5),
                  Color(0xFFFFF1A5),
                ])),
            //  color: Colors.black,
            alignment: Alignment.center,

            child: Text(
              "CHECKOUT ALL",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff450808)),
            ),
          ),
          Column(
            children: [
Container(
  padding: EdgeInsets.only(left:15),
            color: Color(0xff460C54),
            width: double.infinity,
            height: MediaQuery.of(context).size.height/6,
   child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                Container(
                  child: Text('Subtotal',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white
                ),),),
                Container(

  padding: EdgeInsets.only(right:15),
                  child: Text('₹ 1999',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white
                ),),),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                Container(
                  child: Text('Delivery Charge',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white
                ),),),
                Container(
  padding: EdgeInsets.only(right:15),
                  child: Text('₹ 99',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white
                ),),),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                Container(
                  child: Text('Price',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w500,color:Color(0xffDDBF24)
                ),),),
                Container(
  padding: EdgeInsets.only(right:15),
                  child: Text('₹ 1999',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xffDDBF24)
                ),),),
              ],
            ),

          ],),
          ),
        ]),
        orderCard(),

        orderCard(),
        orderCard(),
        
        ]),
      ),
      bottomNavigationBar: createBottomNavigationBar(),
    );
  }
}
