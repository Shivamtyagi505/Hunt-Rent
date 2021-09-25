import 'package:flutter/material.dart';

class Location2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          child: Image.asset(
            'images/map.png',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            height: 273,
            width: 300,
            child: Card(
              color: Color(0xff460C54),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                        child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'ALLOW “HUNT AND RENT” TO ACCESS YOUR LOCATION WHILE USING THE APP',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ))),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Color(0xFFE8E8E8),
                        child: Text(
                          'LOCATE ME',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ]),
      SizedBox(
        height: 50,
      ),
      Container(
        child: FittedBox(
          child: Container(
            width: 300,
            // margin: EdgeInsets.all(10),
            child: Text(
              'We use this to improve our services for you.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 30,
      ),
    Container(
          
          height: 70,
          child: RaisedButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Color(0xFFE8E8E8),
            child: Text(
              'ENTER ADDRESS MANUALLY',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
       
      ),
    ]));
  }
}
