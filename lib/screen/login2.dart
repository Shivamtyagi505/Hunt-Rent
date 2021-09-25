import 'dart:ui';

import 'package:HuntandRent/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:HuntandRent/main.dart';

import '../api/api_service.dart';
import 'home.dart';

class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final nameText = TextEditingController();
  final emailText = TextEditingController();
  final passwordText = TextEditingController();
  final cnfpasswordText = TextEditingController();
  //MARK:API Call
  callSignUpApi() {
    final service = ApiServices();

    service.apiCallSignUp(
      {
        "name": nameText.text,
        "email": emailText.text,
        "password": passwordText.text,
        "cnfpassword": cnfpasswordText.text,
      },
    ).then((value) {
      if (value.error != null) {
        print("get data >>>>>> " + value.error!);
      } else {
        print(value.token!);

        showAlert(context, "User has Successfully registered");
        print('You have successfully signed up');
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        //push
      }
    });
  }

  bool valuefirst = false;

  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bghuntrent.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
              child: CircleAvatar(
                radius: 44.0,
                backgroundImage: AssetImage('images/hrlogo.jpeg'),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'images/login1rect.png',
                    height: MediaQuery.of(context).size.height * 0.56,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.13,
                        ),
                        child: BuildTextField('Name', Icon(Icons.supervised_user_circle), nameText)),
                    Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.13,
                        ),
                        child: BuildTextField('Email', Icon(Icons.mail), emailText)),
                    Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.13,
                        ),
                        child: BuildTextField('Password', Icon(Icons.visibility), passwordText)),
                    Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.13,
                        ),
                        child: BuildTextField('Confirm Password', Icon(Icons.visibility), cnfpasswordText)),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.14,
                          ),
                          child: Theme(
                            child: Checkbox(
                              checkColor: Colors.black,
                              activeColor: Colors.white,
                              value: this.valuefirst,
                              onChanged: (value) {
                                setState(() {
                                  this.valuefirst = value!;
                                });
                              },
                            ),
                            data: ThemeData(
                              unselectedWidgetColor: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                            child: Text(
                          'I accept the terms and conditions \n offered by XXXX',
                          maxLines: 2,
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                        )),
                      ],
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 80),
                        child: Newformbutton(
                          'Sign Up',
                          // nameText.text == "" &&
                          //         emailText.text == "" &&
                          //         passwordText.text == "" &&
                          //         cnfpasswordText.text == ""
                          //     ? () => showToast("Please fill all the fields")
                               () {
                                    callSignUpApi();
                                  },
                        )),
                  ],
                )
              ],
            ),

//                  Stack(
//             children: [
//               Container(
//                 margin: EdgeInsets.fromLTRB(60, 40, 0, 0),
//                 width: 300,
//                 height: 4,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(colors: <Color>[
//                   Color(0xFFBD9D02),
//                   Color(0xFFFFF1A5),
//                   Color(0xFFFFF1A5),
//                 ])),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     margin: EdgeInsets.only(top: 19),
//                     // padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         gradient: LinearGradient(colors: <Color>[
//                           Color(0xFFBD9D02),
//                           Color(0xFFFFF1A5),
//                           Color(0xFFFFF1A5),
//                         ]),
//                         borderRadius: BorderRadius.all(Radius.circular(200))),
//                     width: 40, height: 40,
//                     child: Text(
//                       'OR',
//                       style: TextStyle(fontSize: 18, color: Colors.white),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(height: 8,),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
//          children: [
//            Container(
//                   color: Colors.transparent,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     child: Image.asset('images/fbicon.png',
//                       //   height: 42,
//                       // width: 42,
//                       fit: BoxFit.cover,
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       shape: CircleBorder(),
//                     ),
//                   )),

//                   Container(

//                   child: Image.asset('images/google.png',),
//               ),
//          ],

// ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
              width: 300,
              height: 4,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                Color(0xFFBD9D02),
                Color(0xFFFFF1A5),
                Color(0xFFFFF1A5),
              ])),
            ),

            Container(
              alignment: Alignment.center,
              child: Text(
                'Already have an account?',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Color(0xffFAD72C), fontSize: 28, fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    ]));
  }
}
