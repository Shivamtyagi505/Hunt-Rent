
import 'dart:convert';

Usermodel usermodelFromJson(String str) => Usermodel.fromJson(json.decode(str));

String usermodelToJson(Usermodel data) => json.encode(data.toJson());

class Usermodel {
    Usermodel({
        required this.token,
        required this.email,
    });

    String token;
    String email;

    factory Usermodel.fromJson(Map<String, dynamic> json) => Usermodel(
        token: json["token"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "email": email,
    };
}
