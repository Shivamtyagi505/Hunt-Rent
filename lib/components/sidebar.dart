import 'package:flutter/material.dart';

class MySidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30),
            height: 60,
            child: Center(
              child: Text(
                'Hello User',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff450808),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    // begin: Alignment.topLeft,
                    //   end: Alignment.bottomRight,
                    colors: <Color>[
                  Color(0xFFFFF1A5),
                  Color(0xFFBD9D02),
                  Color(0xFFFFF1A5),
                ])),
          ),
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            height: 100,
         
            child: Icon(
                      Icons.supervised_user_circle,
                      size: 90,
                    )),
         ListTile(
            
            title: Text('Home',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: Icon(Icons.home),
          ),
          ListTile(
            title: Text('Shop by Categories',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: Icon(Icons.shop),
          ),
          ListTile(
            title: Text('Your Orders',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: Icon(Icons.mobile_friendly),
          ),
          ListTile(
            title: Text('Buy Again',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: Icon(Icons.attach_money_outlined),
          ),ListTile(
            title: Text('Your Wishlist',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: Icon(Icons.favorite_outline_rounded),
          ),ListTile(
            title: Text('Your Account',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: Icon(Icons.settings),
          ),ListTile(
            
            title: Text('Customer Service',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: Icon(Icons.question_answer),
          ),ListTile(
            title: Text('Privacy Policy',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
            leading: Icon(Icons.settings),
          ),
          Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
             
            
              child: Text('FAQs',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
             GestureDetector(
               onTap: (){
                //  doUserLogout();
               },
                            child: Container(
                    margin: EdgeInsets.all(6),
                child: Text('Logout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xff460C54)),),
            ),
             ),],
                    
          ),

        ],
      ),
    );
  }
}