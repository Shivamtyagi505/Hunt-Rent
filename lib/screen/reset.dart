import 'package:flutter/material.dart';
import '../main.dart';
class ResetPass extends StatelessWidget {
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top:20,),
                        child: Text(
                          'Reset Your Password',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(90, 20, 0, 0),
                        child: buildTextField(
                          hintText: 'New Password',
                          suffixIcon: Icon(Icons.supervised_user_circle),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(90, 20, 0, 0),
                        child: buildTextField(
                          hintText: 'Confirm Password',
                          suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(100, 20, 0, 0),
                        child: formbuttons(
                            text: 'Reset Password',
                            onpress: () {},
                            width: 220),
                      )
                    ],
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
