import 'package:HuntandRent/screen/login.dart';
import 'package:HuntandRent/screen/login2.dart';
import 'package:HuntandRent/screen/openingHours.dart';
import 'package:flutter/material.dart';
// import 'main.dart';

class SignUpVendor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bghuntrent.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1),
                child: CircleAvatar(
                  radius: 44.0,
                  backgroundImage: AssetImage('images/hrlogo.jpeg'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Stack(
                              children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/signuprect.png',height:MediaQuery.of(context).size.height*0.5, 
                      fit: BoxFit.cover,
                    ),
                  ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
    Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top:10),
                    child:  Text(
                      'SIGN UP',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF460C54)),
                    ),),
                     Container(
                      margin: EdgeInsets.all(16),
                      height: 62,
                      width: 226,
                      child: RaisedButton(
                        textColor: Color(0xFFBD9D02),
                        color: Color(0xFFE8E8E8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'User',
                          style: TextStyle(fontSize: 30),
                        ),
                        onPressed: () {
                           Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Login2())
                           );}
          
                        
                      )),

                         Container(
                    child: Text(
                      'or',
                      style: TextStyle(fontSize: 24, color: Color(0xFF460C54)),
                    ),
                  ),
                   Container(
                      margin: EdgeInsets.all(18),
                      height: 62,
                      width: 226,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        textColor: Color(0xFFBD9D02),
                        color: Color(0xFFE8E8E8),
                        child: Text(
                          'Vendor',
                          style:
                              TextStyle(fontSize: 30, color: Color(0xFF460C54)),
                        ),
                        onPressed: () {
                          Navigator.push(
              context, MaterialPageRoute(builder:(context) => Openinghours()));},
          
                      )),
                       Container(
                         padding: EdgeInsets.only(left:170),
                         child: Column(
                          
                         children: [
                    Container( child: FloatingActionButton(
                      
                          onPressed: () {},
                          child: const Icon(
                              Icons.arrow_forward,
                              color: Color(0xffFAD72C),
                          ),
                          backgroundColor: Colors.white
                      ),
                    ),
SizedBox(height: 7,),
                     Container(
                  //  padding: EdgeInsets.fromLTRB(170, 11, 20, 0),
                  
                    child: Text(
                      'Skip',
                      style: TextStyle(fontSize: 16, color: Color(0xFF460C54),),
                    ),
                  ),
                  ],
                         ),
                ),],)
 ],),
            ],
          ),
        ],
      ),
    );
  }
}
