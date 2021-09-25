import 'package:countdown_flutter/countdown_flutter.dart';
import 'package:flutter/material.dart';
import '../components/appbar.dart';
import '../components/sidebar.dart';

class Orderprogress extends StatefulWidget {
  @override
  _OrderprogressState createState() => _OrderprogressState();
}

class _OrderprogressState extends State<Orderprogress> {
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
      body: Column(children: [
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
            "you can cancel the order in",
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
            Container(
              child: CountdownFormatted(
                duration: Duration(hours: 10),
                builder: (BuildContext ctx, String remaining) {
                  return Text(
                    remaining,
                    style: TextStyle(fontSize: 30),
                  ); // 01:00:00
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                      Container(
                height: 65,
                width: 140,
                child: RaisedButton(
                    // shape: BorderRadius.circular(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'CALL',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {})),      Container(
                height: 65,
                width: 140,
                child: RaisedButton(
                    // shape: BorderRadius.circular(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'CANCEL',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff460C54),
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {})),
              ],),
            ),
        Container(
          alignment: Alignment.center,
          child:Image.asset('images/gift.png',height: 110,width: 110,)
        ),
        SizedBox(height: 10,),
        Container(
          color: Color(0xff460C54),
          width: double.infinity,
          alignment: Alignment.center,
          height: 75,
          child: Text('EXPECTED DELIVERY IN',style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white
          ),),
        ),
        SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.fromLTRB(20,13,0,0),
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
    children: [
            Container(child: Text('Order Confirmed',style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic
          ),),
            ),
             Container(child: Text('Packing Order',style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic
          ),),
            ),
             Container(
               child: Text('Ready for Delivery',style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic
          ),),
            ),
            Container(
               child: Text('Shipped Successfully',style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic
          ),),
            ),Container(
               child: Text('Delivered Successfully',style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic
          ),),
            ),
          ],),
        )

          ],
        )
      ]),
      bottomNavigationBar: createBottomNavigationBar(),
    );
  }
}
