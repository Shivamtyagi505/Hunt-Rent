import '../main.dart';
import 'package:flutter/material.dart';

class Hurrayscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bghuntrent.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('images/hrlogo.jpeg'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/hurrayrect.png',height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       SizedBox(height: 30,),
                    Container(
                              // padding: EdgeInsets.only(top:20,left: 60),
                              child: Text(
                                'Hurray!',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),

                              Container(
                               margin: EdgeInsets.all(10),
                              //  padding: EdgeInsets.only(left: 80),
                              child: FittedBox(
                               
                                child: Text(
                                  'Your password has been reset \n successfully!',
                                  style: TextStyle(
                                      color: Color(0xFF013768),
                                      fontSize: 17,
                                      ),
                                ),
                              ),
                            ),

                               Container(
                             margin: EdgeInsets.all(6),
                              child: FittedBox(
                                                              child: Text(
                                  'Now login with your new password',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      ),
                                ),
                              ),
                            ),

                               Container(
                             
                             padding: EdgeInsets.fromLTRB(100,20,0,0),
                              child: formbuttons(
                                text: 'Login',
                                onpress: () {},width: 220
                              ),
                            ),

                            

                      ],
                    ),
                 
                ],
              ),
       
            ],
          ),
          Container(  
                 margin: EdgeInsets.fromLTRB(170, 330, 0, 0),
              child: Image.asset(
                'images/shield.png',
                width: 95,
                height: 95,
                fit: BoxFit.cover,
              )),
              Container(margin: EdgeInsets.fromLTRB(188, 350, 0, 0),
                child: Icon(
          Icons.check,
          color: Colors.white,
          size: 60,
        ),)],
      ),
      
    );
  }
}
