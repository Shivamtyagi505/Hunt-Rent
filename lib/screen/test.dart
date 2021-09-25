
import 'package:flutter/material.dart';

import '../main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/user_model.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}


Future<Usermodel?> signIn(String email, String pass) async{
  final String apiUrl = "http://hunt-and-rent.com/api/login";

  final response = await http.post(Uri.parse(apiUrl),body: {
    "email": email,
    "password": pass
  });

  if(response.statusCode == 201){
    final String responseString = response.body;
    return usermodelFromJson(responseString);
  }else{
    return null;
  }
}
class _TestState extends State<Test> { 
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _loginuserformkey = new GlobalKey<FormState>();
    //  Future validatefield() async {
    //    if(_loginuserformkey.currentState!.validate()){

    //   String email = _emailcontroller.text.trim();
    //   String pass = _passcontroller.text.trim();
    //   String url = 'http://hunt-and-rent.com/api/login';
    //   var data = {'email':email ,'pass':pass};
    //   var response = await http.post(Uri.parse(url), body: json.encode(data));
    //   print(data);
    //   print(response.statusCode);
    //   var message = json.decode(response.body);
    //   print(message);
    //    }
    //    else{
    //      print('error');
    //    }
    // }
Usermodel? _user;

  final TextEditingController? _emailcontroller = TextEditingController();
  final TextEditingController? _passcontroller = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bghuntrent.jpg"),
                fit: BoxFit.fitHeight,
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
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/login1rect.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Form(    
                      key:_loginuserformkey ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(90, 20, 0, 0),
                            child:TextFormField(
                              controller: _emailcontroller,
                              decoration: InputDecoration(
                                  hintText: 'username',
                                  labelStyle: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            )),
                        Container(
                            padding: EdgeInsets.fromLTRB(90, 20, 0, 0),
                            child:
                             
                                TextFormField(
                              controller: _passcontroller,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  labelStyle: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            )),

                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          // margin: EdgeInsets.fromLTRB(60, 30, 0, 0),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),


                         _user == null ? Container() :
            Text("succeess"),

                        Container(
                          padding: EdgeInsets.fromLTRB(180, 0, 0, 0),
                          // child: formbuttons(
                          //     text: 'Login',
                          //     onpressed:validatefield,
          
                          //     width: 130),
                          child: RaisedButton(
                            onPressed: ()async{
          final String? email = _emailcontroller!.text;
          final String? pass = _passcontroller!.text;

          final Usermodel? user = await signIn(email!, pass!);

          setState(() {
            _user = user!;
          });
          print('success');
        },
                             
                          
                          ),

                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
