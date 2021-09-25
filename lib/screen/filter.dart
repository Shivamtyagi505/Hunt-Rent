import 'package:HuntandRent/screen/productsLayout.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Filterpg extends StatefulWidget {
  @override
  _FilterpgState createState() => _FilterpgState();
}

double _value = 30.0;  //slider ka 
double rating = 0;      //star rating 

class _FilterpgState extends State<Filterpg> {
List<DropdownMenuItem<String>> menuitems=[];
int value1 = 1;      //dropdown 1 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(
        height: 40,
      ),
      Container(
        alignment: Alignment.bottomRight,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 11, 20, 0),
          child: FloatingActionButton(
              onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(builder:(context) => Productlayout()));},
          
              child: const Icon(
                Icons.cancel_outlined,
                color: Colors.grey,
                size: 55,
              ),
              backgroundColor: Colors.white),
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(10, 60, 0, 0),
        alignment: Alignment.bottomLeft,
        child: Text(
          'PRICE',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 60),
        child: SliderTheme(
          data: SliderThemeData(

              // trackbar: GradientRectSliderTrackShape()
              // trackShape: BDecoration()
              ),
          child: SfSlider(
            min: 30.0,
            max: 500.0,
            value: _value,
            interval: 100,
            showLabels: true,
            enableTooltip: true,
            onChanged: (dynamic value) {
              setState(() {
                _value = value;
                // print(value);
              });
            },
          ),
        ),
      ),
      SizedBox(height: 50),
      FittedBox(
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 20),
                height: 60,
                width: 100,
                alignment: Alignment.center,
                //
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(
                      color: Colors.grey[600]!,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Text('Rs.30',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ))),
            Container(
              width: 70,
              height: 4,
              color: Colors.black,
            ),
            Container(
              alignment: Alignment.center,
              height: 55, width: 75,
              // color: Colors.grey,
              child: Text(
                'TO',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff670B7C)),
              ),
            ),
            Container(
              width: 70,
              height: 4,
              color: Colors.black,
            ),
            Container(
                margin: EdgeInsets.only(right: 20),
                height: 60,
                width: 100,
                alignment: Alignment.center,
                //
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.grey[600]!),
                    borderRadius: BorderRadius.circular(20)),
                child: Text('Rs.30',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ))),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(10, 60, 0, 0),
        alignment: Alignment.bottomLeft,
        child: Text(
          'RATING',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      SmoothStarRating(
        rating: rating,
        size: 40,
        color: Colors.yellow,
        filledIconData: Icons.star,
        halfFilledIconData: Icons.star_half,
        defaultIconData: Icons.star_border,
        starCount: 5,
        allowHalfRating: false,
        spacing: 4.0,
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
      
      SizedBox(height: 20,),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
Container(
        // margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
              color: Color(0xff460C54),
              borderRadius: BorderRadius.circular(20)),
          child: SizedBox(
            width: double.maxFinite,
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton<String>(
                  icon: Icon(
                    // Add this
                    Icons.arrow_drop_down, // Add this
                    color: Colors.blue, // Add this
                  ),
                  underline: SizedBox(),
                  focusColor: Colors.blue,
                  // value: __value,
                  onChanged: (value) {
              setState(() {
               value=value1.toString();
               
              });
            },
            items: <String>['Bank Deposit', 'Mobile Payment', 'Cash Pickup']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
                  
                  hint: Text("Choose City",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),),),
            ),
          ),
        ), Container(
        padding: EdgeInsets.all(20),
        child: Container(
         
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
              color: Color(0xff460C54),
              borderRadius: BorderRadius.circular(20)),
          child: SizedBox(
            width: double.maxFinite,
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton<String>(
                  icon: Icon(
                    // Add this
                    Icons.arrow_drop_down, // Add this
                    color: Colors.blue, // Add this
                  ),
                  underline: SizedBox(),
                  focusColor: Colors.blue,
                  // value: __value,
                  onChanged: (value) {
              setState(() {
               value=value1.toString();
               
              });
            },
            items: <String>['Bank Deposit', 'Mobile Payment', 'Cash Pickup']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
                  
                  hint: Text("Choose Town",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),),),
            ),
          ),
        ), Container(
        // margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
              color: Color(0xff460C54),
              borderRadius: BorderRadius.circular(20)),
          child: SizedBox(
            width: double.maxFinite,
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton<String>(
                  icon: Icon(
                    // Add this
                    Icons.arrow_drop_down, // Add this
                    color: Colors.blue, // Add this
                  ),
                  underline: SizedBox(),
                  focusColor: Colors.blue,
                  // value: __value,
                  onChanged: (value) {
              setState(() {
               value=value1.toString();
               
              });
            },
            items: <String>['Bank Deposit', 'Mobile Payment', 'Cash Pickup']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
                  
                  hint: Text("Local Area",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),),),
            ),
          ),)
        ],
      ),
      
    ]));
  }
}
