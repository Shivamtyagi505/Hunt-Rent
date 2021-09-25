import 'package:HuntandRent/widgets/shared.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


var urlstart='http://hunt-and-rent.com/api/';
class ApiServices{

  Future <LoginApiResponse> apiCallLogin(Map<String,dynamic> param) async{
    
    var url = Uri.parse(urlstart+'login');
    var response = await http.post(url, body: param);
   
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
   
    final data = jsonDecode(response.body);
    await SharedData().setUser(data['email']);
    return LoginApiResponse(token: data["token"], error: data["error"]);
  }

  ////////////////////////////////
  


  Future <SignUpApiResponse> apiCallSignUp(Map<String,dynamic> param) async{
    
    var url = Uri.parse('http://hunt-and-rent.com/api/register');
    var response = await http.post(url, body: param);
   
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
   
    final data = jsonDecode(response.body);
    return SignUpApiResponse(token: data["token"], error: data["error"]);
  }


 ////////////////////////////////


  Future <SignupVendor> apiCallVendorSignup(Map<String,dynamic> param) async{
    
    var url = Uri.parse('http://hunt-and-rent.com/api/vregister');
    var response = await http.post(url, body: param);
   
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
   
    final data = jsonDecode(response.body);
    return SignupVendor(token: data["token"], error: data["error"]);
  }



}
  

class LoginApiResponse{
  final String? token;
  final String? error;

  LoginApiResponse({this.token,this.error});

}

class SignUpApiResponse{
  final String? token;
  final String? error;

  SignUpApiResponse({this.token,this.error});

}

class SignupVendor{
  final String? token;
  final String? error;

  SignupVendor({this.token,this.error});

}