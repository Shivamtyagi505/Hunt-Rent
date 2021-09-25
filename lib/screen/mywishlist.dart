import 'package:flutter/material.dart';
import '../components/appbar.dart';
import '../components/sidebar.dart';

class Mywishlist extends StatefulWidget {
  @override
  _MywishlistState createState() => _MywishlistState();
}

class _MywishlistState extends State<Mywishlist> {
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
            "MY WISHLIST",
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

Widget orderCard() {
  return Stack(
      children: [
      Card(
        margin: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.grey[300],
        child: Container(
          width: double.infinity,
          height: 160,
          child: Row(
            children: [
              Container(
                width: 143,
                height: double.infinity,
                child: Image.asset(
                  'images/dress.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               
                Row(children: [
                    Container(padding: EdgeInsets.all(8),
                      child: Text('ENTARO',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,),),
                    ),
                    SizedBox(width: 90,),
                    Container(
                      child:GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.remove_circle,)),
                    )
                  ],
                ),
                 FittedBox(
                  child: Text('Women’s Silk Suit with light Scarf',style: TextStyle(fontSize: 14),),
                ),Container(

                  padding: EdgeInsets.all(11),

                  child: Text('Shop Description',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.grey),),
                ),
                
              ])
            ],
          ),
        ),
      ),
  Container(
        margin: EdgeInsets.fromLTRB(197, 140, 0, 0),
  decoration: BoxDecoration(
  boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius:1,
            offset: Offset(2, 2),
          ),
        ], 
  ),
              height: 75,
              child: RaisedButton(
                
                shape: RoundedRectangleBorder(
                    
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'Rent Now',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {})),

    ],
  );
}
/////////////////////////////////////////////////////
///
