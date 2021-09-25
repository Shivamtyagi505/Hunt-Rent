import 'package:HuntandRent/components/appbar.dart';
import 'package:HuntandRent/components/sidebar.dart';
import 'package:flutter/material.dart';
class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
    
      drawer: MySidebar(),
      body:Column(
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
              'SETTINGS',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff450808)),
            ),
          ),
            
  SizedBox(height: 20,),
 
settingCard('Change Password', 'Change password to your account on hunt and rent ',(){}),
settingCard('FAQ', 'Answers to most frequently asked questions',(){}),

settingCard('Terms And Condition', 'Read carefully the terms and conditions of the app',(){}),
settingCard('Support', 'All the help you need',(){}),
settingCard('About us', 'Everything you need to know about Hunt and Rent',(){}),

],
      ),
      bottomNavigationBar: createBottomNavigationBar(),
    );
  }
}


Widget settingCard(String title,String subtitle,Function ontapped){
return InkWell(
  onTap: ontapped(),
  child: Card(
    
            margin: EdgeInsets.all(12),   
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10), 
    side: BorderSide(
      color: Colors.grey.withOpacity(0.2),
      width: 1,
    ),
  ),
  child: Container(
   color: Color.fromRGBO(196, 196, 196, 0.14),
    width: 360,
    height: 80,
    padding: EdgeInsets.all(15),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Container(
        alignment: Alignment.topLeft,
        child: Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
        SizedBox(height: 5,),
      Container(
        alignment: Alignment.topLeft,
        child: Text(subtitle,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),]),
  ),),
);
}
