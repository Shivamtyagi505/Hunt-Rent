import 'dart:ui';
import 'package:HuntandRent/components/appbar.dart';
import 'package:HuntandRent/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:share/share.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class CardDetailpg extends StatefulWidget {
  @override
  _CardDetailpgState createState() => _CardDetailpgState();
}
 Color _color=Colors.pink;
    double rating = 0;
class _CardDetailpgState extends State<CardDetailpg> {
  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: MyAppbar(),
      drawer: MySidebar(),
      body: SingleChildScrollView(
        child: Column(children: [
          new Container(
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
          ),
          Container(
            height: 55,
            margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
            width: double.infinity,
            child: Text(
              'Brand name: Panash India Designer  Salwar Kameez semi stitched with dupatta',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 9),
            alignment: Alignment.centerRight,
            height: 25,
            child: SmoothStarRating(
              rating: rating,
              size: 20,
              color: Colors.yellow,
              filledIconData: Icons.star,
              halfFilledIconData: Icons.star_half,
              defaultIconData: Icons.star_border,
              starCount: 5,
              allowHalfRating: false,
              spacing: 1.0,
              onRated: (double rating) {
                onRatingChanged:
                (double rating) {
                  setState(() {
                    rating = rating;
                    print(rating);
                  });
                };
              },
            ),
          ),
          Stack(
                      children: [
              Container(
                width: 360,
                height: 320,
                child: FittedBox(
                    child: Image.asset(
                  'images/carddetaildress.png',
                  fit: BoxFit.cover,
                )),
              ),
            Column(
                          children: [
                Container(
                   padding: EdgeInsets.only(right:20),
                  alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      radius: 28.0,
                      // backgroundImage: AssetImage('images/hrlogo.jpeg'),
                      backgroundColor: Color(0xff460C54),
                      child: FittedBox(
                        child: Text('67%',
                  style: TextStyle(
                    fontSize: 24,color: Colors.white
                  ),),
                      ),
                    ),
                ),
                SizedBox(height: 10,),

Container(
  padding: EdgeInsets.only(right:20),
                  alignment: Alignment.centerRight,
  child:   Ink(
    decoration: ShapeDecoration(
       color: Colors.white,
       shape: CircleBorder(),
    ),
    child: IconButton(
      icon: Icon(Icons.share,size: 29,),
      onPressed: () {
      print('pressed');
      },
    ),
  ),
),

              ],
            ),


            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.topLeft,
            child: Text(
              'Colour Name: Green',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                circleCards('images/dress1.png', 200),
                circleCards('images/dress2.png', 400),
                circleCards('images/dress3.png', 200),
                circleCards('images/dress4.png', 600),
                circleCards('images/dress5.png', 200),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(25,20,0,0),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(
                    text: 'Size :',
                    style: new TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  new TextSpan(
                      text: 'Select size to see price',
                      style: new TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                ])),
          ),
          Row(children: [
                     GestureDetector(
                                            child: Container(
                margin: EdgeInsets.all(10),
                height: 60,
                width: 60,
                alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: _color,
                    border: Border.all(
                        color: Colors.grey[600]!,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Text('S',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                    ))),
                    onTap:(){setState(
                      () {
                        _color=Colors.blueGrey;
                        // print('state called');
                      });}
                     ),
                     

                      GestureDetector(
                                            child: Container(
                margin: EdgeInsets.all(10),
                height: 60,
                width: 60,
                alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: _color,
                    border: Border.all(
                        color: Colors.grey[600]!,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Text('M',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                    ))),
                    onTap:(){setState(
                      () {
                        _color=Colors.blueGrey;
                        // print('state called');
                      });}
                     ),
          ],),
       Container(
            padding: EdgeInsets.only(right: 10),
            alignment: Alignment.topRight,
            child: Text(
              'Size Chart',
              style: TextStyle(
                fontSize: 14,color: Color(0xff460C54)
              ),
            ),
          ),

        Container(

            padding: EdgeInsets.only(left:10),
            margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Rs. 2,299 ',
                style: TextStyle(
                  fontSize: 20,color: Color(0xff953417)
                ),
              ),
            ),  Container(
             alignment: Alignment.centerLeft,    child: Text(
                'Inclusive of all the taxes',
                style: TextStyle(
                  fontSize: 17,color: Color(0xff460C54)
                ),
              ),
            ),
            ],
          ),
        ),  
 Container(
   
          width: 300,
          height: 70,
          child: RaisedButton(onPressed:(){},
           shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    
                      color: Color(0xFFE8E8E8),
          child: Text('BUY NOW',style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.w500
          ),),
          ),
        ),
        SizedBox(height: 17,)
        , Container(
   
          width: 300,
          height: 70,
          child: RaisedButton(onPressed:(){},
           shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    
                      color: Color(0xFFE8E8E8),
          child: Text('ADD TO CART',style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.w500
          ),),
          ),
        ),

        SizedBox(height: 17,),

InkWell(
    onTap: (){},
    child: Card(
      child: Container(color: Color(0xFFE8E8E8),
        width: double.infinity,
        height: 80,
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              width: 130,
              child: Image.asset('images/brand.png'),
            ),
            SizedBox(
              width: 15,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'SALWAR SUIT SET',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'RS.1999',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: Colors.red,)
                  )),
            ]),
          ],
        ),
      ),
    ),),

    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.all(16),
        width: 120,height:120,
        child: Card(child: Image.asset('images/dress5.png',fit: BoxFit.cover,),)),
    ),
        ]),
      ),
      bottomNavigationBar: createBottomNavigationBar(),
    );
  }
}


//////////////////widgets//////////////////////
Widget circleCards(img, int amt) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.all(7),
        child: GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage(img),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      Container(
        child: Text('Rs.' + amt.toString()),
      )
    ],
  );
}

