
import 'package:flutter/material.dart';
import '../api/api_service.dart';
import '../main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Test2 extends StatefulWidget {
  @override
  _Test2State createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  

 final emailText = TextEditingController();
 final passwordText = TextEditingController();

  //MARK:API Call 
  callLoginApi() {
    final service = ApiServices();
    
     service.apiCallLogin(
        {
          "email": emailText.text,
          "password": passwordText.text,
        },
      ).then((value){
          if(value.error != null){
            print("get data >>>>>> " + value.error!);
          }else{
            print(value.token!);
            //push
          }
      });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          TextField(
            controller: emailText,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Email/Phone',
              hintText: 'Enter Your Register Email',
            ),
          ),
          TextField(
            obscureText: true,
            controller: passwordText,
            decoration: InputDecoration(
              labelText: 'password',
              hintText: 'Enter Your Password',
            ),
          ),
          // buildTextField(
          //   hintText:'password' ,controller:passwordText ,suffixIcon:Icon(Icons.visibility),
          //   ),
          TextButton(
            onPressed: () {
              callLoginApi();
            },
            child: Text(
              'Submit',
            ),
          ),
        ],
      ),
    );}}