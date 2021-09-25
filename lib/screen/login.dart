import 'package:HuntandRent/screen/home.dart';
import 'package:HuntandRent/main.dart';
import 'package:HuntandRent/screen/signup.dart';
import 'package:HuntandRent/screen/signupvendor.dart';
import 'package:flutter/material.dart';
import '../api/api_service.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userText = TextEditingController();
  final passwordText = TextEditingController();

  //MARK:API Call
  callLoginApi() {
    final service = ApiServices();

    service.apiCallLogin(
      {
        "email": userText.text,
        "password": passwordText.text,
      },
    ).then((value) {
      if (value.error != null) {
        print("get data >>>>>> " + value.error!);
      } else {
        print(value.token!);
       // showAlert(context, "User Successfully logged in");
         Navigator.push(
              context, MaterialPageRoute(builder:(context) => HomePage()));

        // print('You have successfully logged in');
        //push
      }
    });
  }



String? validateMobile(String value) {
  String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(patttern);
  if (value.length == 0) {
    return 'Please enter mobile number.';
  } else if (!regExp.hasMatch(value)) {
    return 'Please enter valid mobile number.';
  }
  return null;
}

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
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1),
                  child: CircleAvatar(
                    radius: 44.0,
                    backgroundImage: AssetImage(
                      'images/hrlogo.jpeg',
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/login1rect.png',
                        height: MediaQuery.of(context).size.height * 0.50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.13,
                            ),
                            child: BuildTextField('Username',
                                Icon(Icons.supervised_user_circle), userText)),
                        Container(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.13,
                            ),
                            alignment: Alignment.center,
                            child: BuildTextField('Password',
                                Icon(Icons.visibility), passwordText)),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(right: 80),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 120),
                          child: Newformbutton(
                            'Login',
//userText.text=="" && passwordText.text==""?()=>showToast("Please fill all the fields"):()=>
                            () {
                              callLoginApi();
                            },
                            width: 120,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
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
                        "Don't have an account?",
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpVendor()));
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Color(0xffFAD72C),
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Newformbutton extends StatelessWidget {
  final String text;
  final Function pressed;
  final double? width;
  Newformbutton(this.text, this.pressed, {this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Color(0xff9B019B),
        borderRadius: new BorderRadius.circular(30.0),
      ),
      //  padding: EdgeInsets.fromLTRB(180, 0, 0, 0),
      child: TextButton(
          onPressed: () {
            pressed();
          },
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.white),
          )),
    );
  }
}
