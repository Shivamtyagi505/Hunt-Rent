import 'package:HuntandRent/screen/hurrayscreen.dart';
import 'package:flutter/cupertino.dart';

import '../api/api_service.dart';
import 'home.dart';
import '../main.dart';
import 'package:flutter/material.dart';
class Openinghours extends StatefulWidget {
 

  @override
  _OpeninghoursState createState() => _OpeninghoursState();
}

class _OpeninghoursState extends State<Openinghours> {
final yourname = TextEditingController();
final shopname = TextEditingController();
final email = TextEditingController();

  //MARK:API Call
  callVendorSignUpApi() {
    final service = ApiServices();

    service.apiCallVendorSignup(
      {
       "name":yourname.text,
       "shopname":shopname.text,
       "email":email.text

      },
    ).then((value) {
      if (value.error != null) {
        print("get data >>>>>> " + value.error!);
      } 
      // else if(yourname.text==("")){
      //  showAlert(context, 'Yourname field is empty');
      // }
      else {
        print(value.token!);

        showAlert(context,"Vendor has Successfully Registered");
       
         Navigator.push(
              context, MaterialPageRoute(builder:(context) => Hurrayscreen()));
         
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/newbghuntrent.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
                      child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
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
                        'images/login1rect.png',height:MediaQuery.of(context).size.height*0.56,
    
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [SizedBox(
                  height: 28,
                ),
                               Container(
                          padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.13,),
                          child: BuildTextField(
                            'Your name', Icon(Icons.supervised_user_circle), yourname)
                    
                        ),
                          Container(
                          padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.13,),
                          child: BuildTextField(
                            'Shop name', Icon(Icons.supervised_user_circle), shopname)
                    
                        ),  Container(
                          padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.13,),
                          child: BuildTextField(
                            'Email', Icon(Icons.supervised_user_circle), email)
                    
                        ),
                           

                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top:22,left: 80),
                              child: Text('Opening Hours',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                            ),
SizedBox(height: 10,),
                             Column(
                                children: [
                                  
                                  buildTimePicker(
                                  
                                  ), ],),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.55, ),
                    child: FloatingActionButton(
                    
                     onPressed: 

yourname.text=="" && shopname.text==""&& email.text==""?()=>showToast("Please fill all the fields"):()=>
                       () {
                        callVendorSignUpApi();
                           },
                      child: const Icon(
                        Icons.arrow_right,
                        size: 48,
                        color: Colors.white
                      ),
                      backgroundColor: Color(0xFF9B019B),
                    ),
                  ),
                               
                               

                          ],
                        ),
                    ),
                   
                  ],
                ),
       
              ],
            ),
          ),
         ],
      ),
      
    );
  }
}

 DateTime dateTime=DateTime.now();
Widget buildTimePicker()=>SizedBox(
  
  height: 30,
  // width: 50,
  
  child: Container(
    
    padding: EdgeInsets.only(left:8,right: 8),
    height: 50,
    
    child: CupertinoDatePicker(
      
      initialDateTime: dateTime,
      
      mode: CupertinoDatePickerMode.time,
      
      use24hFormat: false,
      
      onDateTimeChanged: (dateTime){
        
      print(dateTime);
      }
    ),
  ),
);

// // ignore: must_be_immutable
// class BuildTimePicker extends StatelessWidget {

//  DateTime dateTime=DateTime.now();
//   final TextEditingController timecontroller;
//   BuildTimePicker(this.timecontroller);
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 30,
//   // width: 50,
  
//   child: Container(
    
//     padding: EdgeInsets.only(left:8,right: 8),
//     height: 50,
    
//     child: CupertinoDatePicker(
      
//       initialDateTime: dateTime,
//       mode: CupertinoDatePickerMode.time,
      
//       use24hFormat: false,
//       onDateTimeChanged: (dateTime){
//       print(dateTime);
     
//       }
//     ),
//   ),
//     );
//   }
// }