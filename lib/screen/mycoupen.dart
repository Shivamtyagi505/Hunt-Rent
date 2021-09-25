import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/sidebar.dart';

class Mycoupen extends StatelessWidget {
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
            "MY COUPONS",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff450808)),
          ),
        ),
        Column(children: [
          mycoupon(),
          mycoupon(),mycoupon(),
        ],)
      ]),
      bottomNavigationBar: createBottomNavigationBar(),
    );
  }
}

// Widget mycoupon(){
//   return Container(
//     child: Card(),
//   );
// }
Widget mycoupon() {
  return InkWell(
    // onTap: ontapped(),
    child: Container(
      width: 430,
      height: 200,
      padding: EdgeInsets.all(10),
      child: Card(
        color: Colors.grey[200],
        margin: EdgeInsets.all(12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Row(children: [
          Container(

            width: 120,
            height: 90,
            child: Container(
              margin: EdgeInsets.fromLTRB(28,10,0,0),
              child: Text('90% OFF',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Color(0xff460C54)),),
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            
            color: Color.fromRGBO(0, 0, 0, 0.32),
            width: 2,
            height: double.infinity,
          ),
          SizedBox(width: 10,),
          Column(
           children: <Widget>[
             Container(
               margin: EdgeInsets.fromLTRB(0,26,0,0),
               width: 210,
               height: 44,
               child: Text('On minimum purchase of Rs.1,499',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400),),
             ), 
             SizedBox(height: 13,),
             FittedBox(
              //  margin: EdgeInsets.all(3),
              //  width: 180,
              //  height: 44,
               child: Container(
                
                 child: Text('Code: XYZZESSORIZE300',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),)),
             ), 
             SizedBox(height: 16,),
             Row(
               
                            children: [
                     Container(
                      
                     child: Text('Expiry: Jul 31,2021',)),
                     SizedBox(width: 10,),
                  Container(
                      
                     child: Text('12:00:00 A.M.')),
                   ],
             ),
             

           ],
          ),
        ]),
      ),
    ),
  );
}
