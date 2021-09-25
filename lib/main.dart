//@dart=2.9
// import 'package:HuntandRent/addscreen.dart';
import 'package:HuntandRent/screen/address2.dart';
import 'package:HuntandRent/screen/allset.dart';
import 'package:HuntandRent/screen/cardDetailpage.dart';
import 'package:HuntandRent/screen/checkout.dart';
import 'package:HuntandRent/components/appbar.dart';
import 'package:HuntandRent/components/sidebar.dart';
import 'package:HuntandRent/screen/custservice.dart';
import 'package:HuntandRent/screen/faq.dart';
import 'package:HuntandRent/screen/filter.dart';
import 'package:HuntandRent/screen/home.dart';
import 'package:HuntandRent/screen/hurrayscreen.dart';
import 'package:HuntandRent/screen/mycoupen.dart';
import 'package:HuntandRent/screen/mywishlist.dart';
import 'package:HuntandRent/screen/no_order.dart';
import 'package:HuntandRent/screen/nointernet.dart';

import 'package:HuntandRent/screen/openingHours.dart';
import 'package:HuntandRent/screen/login.dart';
import 'package:HuntandRent/screen/login2.dart';
import 'package:HuntandRent/screen/otp.dart';
import 'package:HuntandRent/screen/productsLayout.dart';
import 'package:HuntandRent/screen/profile.dart';
import 'package:HuntandRent/screen/profiledetails.dart';
import 'package:HuntandRent/screen/qr_thankyou.dart';
import 'package:HuntandRent/screen/reset.dart';
import 'package:HuntandRent/screen/setting.dart';
import 'package:HuntandRent/screen/signup.dart';
import 'package:HuntandRent/screen/signupvendor.dart';
import 'package:HuntandRent/screen/splashScreen/splash_screen.dart';
import 'package:HuntandRent/screen/tabBarscreens.dart';
import 'package:HuntandRent/screen/test.dart';
import 'package:HuntandRent/screen/test2.dart';
import 'package:HuntandRent/screen/yourbookmark.dart';
import 'package:HuntandRent/screen/yourcart.dart';
import 'package:flutter/material.dart';
// import 'signup.dart';
import 'package:HuntandRent/screen/login.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'screen/addscreen.dart';
import 'screen/categorylayout.dart';
import 'screen/location2.dart';
import 'screen/orderprogress.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

////////////////////widgets //////////////////

class BuildTextField extends StatelessWidget {
   final String hintText;
   final Widget suffixIcon; 
   final TextEditingController controller;

  BuildTextField(this.hintText,this.suffixIcon,this.controller);
  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
      Container(
          margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width*0.7,
        height: 51,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              blurRadius: 2,
              // spreadRadius: 0.6,

              offset: Offset(0, 3),
            ),
          ],
          color: Color(0xffEEEDED),
        ),
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          child: TextFormField(
            obscureText: controller == 'passwordText' ? true : false,
           
            controller: controller,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(
                  left: 8.0,
                  bottom: 8.0,
                  top: 8.0),
              border: InputBorder.none, 
              hintText: hintText,
              suffixIcon: suffixIcon,
            ),
            style: TextStyle(color: Color(0Xff070707)),
          ),
        ),
      ),
    ],
  );
  }
}
Widget buildTextField(
    {String hintText, Widget suffixIcon, TextEditingController controller}) {
  return Row(
    children: [
      Container(
        width: 243,
        height: 51,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              blurRadius: 2,
              // spreadRadius: 0.6,

              offset: Offset(0, 3),
            ),
          ],
          color: Color(0xffEEEDED),
        ),
        child: TextFormField(
          obscureText: controller == 'passwordText' ? true : false,
          controller: controller,
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            contentPadding: EdgeInsets.all(10.0),
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
          style: TextStyle(color: Color(0Xff070707)),
        ),
      ),
    ],
  );
}

Widget formbuttons({
  String text,
  Function onpress,
  double width,
}) {
  return Row(
    children: [
      FittedBox(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff9B019B),
            borderRadius: new BorderRadius.circular(30.0),
          ),
          width: width,
          height: 65,
          child: RaisedButton(
            onPressed: onpress(),
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            color: Color(0xff9B019B),
          ),
        ),
      ),
    ],
  );
}

class TextEditorForPhoneVerify extends StatelessWidget {
  final TextEditingController code;

  TextEditorForPhoneVerify(this.code);

  @override
  Widget build(BuildContext context) {
    return TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: this.code,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            hintText: "*",
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)));
  }
}



void showAlert(BuildContext context,String message) {
  showDialog(
          context: context,
          builder: (context) {
                        Future.delayed(Duration(seconds: 4), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                content: Text(message),
                        );
          }
  );
    }


    void showToast(String emptymsg)=>Fluttertoast.showToast(msg:emptymsg,
    fontSize: 18,
    gravity: ToastGravity.TOP,
    backgroundColor:Colors.black,
    textColor: Colors.white
    );