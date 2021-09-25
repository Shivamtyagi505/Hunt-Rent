// import 'package:HuntandRent/home.dart';
// import 'package:HuntandRent/main.dart';
// import 'package:flutter/material.dart';
// import 'api/api_service.dart';

// class VendorLogin extends StatefulWidget {
//   @override
//   _VendorLoginState createState() => _VendorLoginState();
// }

// class _VendorLoginState extends State<VendorLogin> {
//   final vuserText = TextEditingController();
//   final vpasswordText = TextEditingController();

//   //MARK:API Call
//   callVendorLoginApi() {
//     final service = ApiServices();

//     service.apiCallVendorLogin(
//       {
//         "email": vuserText.text,
//         "password": vpasswordText.text,
//       },
//     ).then((value) {
//       if (value.error != null) {
//         print("get data >>>>>> " + value.error!);
//       } else {
//         print(value.token!);
//         print('vendor has successfully logged in');
//          Navigator.push(
//               context, MaterialPageRoute(builder:(context) => HomePage()));
    
//         // print('You have successfully logged in');
//         //push
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("images/bghuntrent.jpg"),
//                 fit: BoxFit.fitHeight,
//               ),
//             ),
//           ),
//           Column(
//             children: [
//               Container(
//                 alignment: Alignment.topCenter,
//                 padding: EdgeInsets.only(
//               top: MediaQuery.of(context).size.height * 0.1),
//                 child: CircleAvatar(
//                   radius: 44.0,
//                   backgroundImage: AssetImage('images/hrlogo.jpeg'),
//                   backgroundColor: Colors.transparent,
//                 ),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Stack(
//                 children: [
//                   Container(
//                     alignment: Alignment.center,
//                     child: Image.asset(
                      
//                       'images/login1rect.png',height:MediaQuery.of(context).size.height*0.5, 
//                       fit: BoxFit.cover,
//                     ),
//                   ),
              
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     // crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [    SizedBox(
//                 height: 20,
//               ),
//                       Container(
//                         padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.13,),
//                         child: BuildTextField(
//                           'Username', Icon(Icons.supervised_user_circle), vuserText)
                  
//                       ),
//                       Container(
//                         padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.13,),
//                          alignment: Alignment.center,
//                         child: BuildTextField(
//                           'Password', Icon(Icons.visibility), vpasswordText)
                   
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Container(
//                         alignment: Alignment.centerRight,
//                         padding: EdgeInsets.only(right:80),   
//                         child: Text(
//                           'Forgot Password?',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.w400),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                      Newformbutton('Login', (){callVendorLoginApi();},width: 130,),

//                     ],
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Newformbutton extends StatelessWidget {
//   final String text;
//   final Function pressed;
//   final double? width;
//  Newformbutton(this.text,this.pressed,{this.width});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       decoration: BoxDecoration(
//         color: Color(0xff9B019B),
//         borderRadius: new BorderRadius.circular(30.0),
//       ),
//       //  padding: EdgeInsets.fromLTRB(180, 0, 0, 0),
//       child: TextButton(
//           onPressed: (){pressed();},
//           child: Text(
//             text,
//             style: TextStyle(fontSize: 18, color: Colors.white),
//           )),
//     );
//   }
// }
