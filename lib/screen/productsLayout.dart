import 'package:HuntandRent/screen/filter.dart';
import 'package:HuntandRent/screen/mywishlist.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../components/appbar.dart';
import '../components/sidebar.dart';
import 'home.dart';

class Productlayout extends StatefulWidget {
  @override
  _ProductlayoutState createState() => _ProductlayoutState();
}

class _ProductlayoutState extends State<Productlayout> {
  List<String> images = [
    "images/dress3.png",
    "images/dress4.png",
    "images/dress5.png",
    // "images/dress2.png",
    // "images/dress1.png",
  ];
  List<String> imgtitle = [
    'THEME STORE',
    'JEWELLERY','KIDS'
  ];

  List<String> imgFullname = ['Women’s Silk Suitwith light Scarf', 'wewewed','adch'];
  List<bool> starsrating = [true, false];
  List<int> prodPrice = [1000, 1000,2000];

  @override
  Widget build(BuildContext context) {
    // bool startfunction =false;
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MySidebar(),
      body: Stack(
        children: [
          Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.topRight,
              child: GestureDetector(
                  child: Text(
                    'Filter',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Filterpg()));
                  })),
          Container(
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.all(12.0),
              child: GridView.builder(
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: MediaQuery.of(context).size.width*0.9,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 20.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    Expanded(
                       
child: Card(
                            elevation:5,
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset(
                                images[index],
                                fit: BoxFit.cover,
                              )),
                        ),
               Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Colordot(color: Colors.pink,isSelected: true,),
                Colordot(color: Colors.blueAccent,),
                Colordot(color: Colors.greenAccent,),
              ],),

                  Container(
                      margin: EdgeInsets.only(top: 9),
                      child: FittedBox(
                        child: Text(
                          imgtitle[index],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        imgFullname[index],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        softWrap: false,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
            Container(
                 height: 25,
                  child: SmoothStarRating(
                    rating: rating,
                    size: 20,
                    color: Color(0xffFFD715),
                    filledIconData: Icons.star,
                    halfFilledIconData: Icons.star_half,
                    defaultIconData: Icons.star_border,
                    borderColor: Colors.grey,
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
                  )

                ),


                    Container(
                      child: FittedBox(
                        child: Text('₹ '+
                          prodPrice[index].toString(),
                          style: TextStyle(
                            fontSize: 27,
                            color: Color(0xff953417),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ]);
                },
              )),
        ],
      ),
      bottomNavigationBar: createBottomNavigationBar(),
    );
  }
}
