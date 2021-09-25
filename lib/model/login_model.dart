// class LoginResponseModel{
//   final String token;
//   final String error;

// LoginResponseModel({required this.error,required this.token});
// factory LoginResponseModel.fromJson(Map <String, dynamic>json){
//   return LoginResponseModel(
//     token: json['token']!=null?json['token']:'',
//     error: json['error']!=null?json['error']:'',);
// }
// }

// class LoginRequestModel{
//   String email;
//   String password;
// LoginRequestModel({required this.email,required this.password});
// Map<String, dynamic>tojson(){
//   Map<String, dynamic>map={
//     'Username':email.trim(),
//     'Password':password.trim(),
//   };
//   return map;
// }
// }