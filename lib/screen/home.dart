import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../components/appbar.dart';
import '../components/sidebar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "images/dress3.png",
    "images/dress4.png",
    "images/dress5.png",
    "images/dress2.png",
    "images/dress1.png",
  ];
  List<String> imgtitle = ['THEME STORE', 'JEWELLERY', 'KIDS','FOOTWEAR','MEN'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MySidebar(),
      body: Column(
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
            'ALL ITEMS',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff450808)),
          ),
        ),
SizedBox(height: 20,),
    Expanded(
                // padding: EdgeInsets.all(12.0),
                child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 230,
              crossAxisSpacing: 1.0,
             mainAxisSpacing: 10.0,
            
             ),
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              Expanded(
                child: Card(
                   shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                  child: Image.asset(images[index],fit: BoxFit.cover,))),
            Container(
              margin: EdgeInsets.only(top:9),
              child: FittedBox(
                     child: Text(
                      imgtitle[index],
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff4D4D4D)),
                    ),
                ),
            )
            ]);
          },
  )),
],
      ),
      bottomNavigationBar: createBottomNavigationBar(),
    );
  }
}

// Widget dresscard(String url,String? section,String? dressname,int? price,bool? smoothStarRating,context){
//      double rating = 0;
//       // bool smoothStarRating=false;

//         return  Container(
//           height: MediaQuery.of(context).size.height,
//           child: Column(
//                 children: [
//                      GestureDetector(
//                        onTap: (){},

//                          child: Container(
//                            height: 200,
//                        child: Card(
//                   elevation: 0.2,color: Colors.grey,

//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20)
//             ),
//            child:Image.asset(url,fit: BoxFit.cover,)),
//               ),

//                  ),
//             SizedBox(height:10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Colordot(color: Colors.pink,isSelected: true,),
//                 Colordot(color: Colors.blueAccent,),
//                 Colordot(color: Colors.greenAccent,),
//               ],),
//             Container(
//               child: Text(section!,
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w700,
//                     color: Colors.black
//                    ),),
//             ),
//            //////color wala widget call kr /////

//             Container(
//               child: Text(dressname!
//               ,
//                 style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w200,
//                    ),),
//             ),Container(
//               child: Text(price!.toString()),
//             ),
//             if (smoothStarRating==true)Container(
//                  height: 25,
//                   child: SmoothStarRating(
//                     rating: rating,
//                     size: 20,
//                     color: Colors.yellow,
//                     filledIconData: Icons.star,
//                     halfFilledIconData: Icons.star_half,
//                     defaultIconData: Icons.star_border,
//                     starCount: 5,
//                     allowHalfRating: false,
//                     spacing: 1.0,
//                     onRated: (double rating) {
//                       onRatingChanged:
//                       (double rating) {
//                         // setState(() {
//                         //   rating = rating;
//                         //   print(rating);
//                         // });
//                       };
//                     },
//                   )

//                 ),
//             ]

//   ),
//         );

// }

class Colordot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const Colordot({Key? key, required this.color, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.only(top: 10, right: 6),
      height: 26,
      width: 26,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          )),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
