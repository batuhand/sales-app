// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
    User({
        this.id,
        this.userName,
        this.userMail,
        this.userPassword,
        this.userToken,
        this.userPhoto,
    });

    int id;
    String userName;
    String userMail;
    String userPassword;
    String userToken;
    dynamic userPhoto;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        userName: json["userName"],
        userMail: json["userMail"],
        userPassword: json["userPassword"],
        userToken: json["userToken"],
        userPhoto: json["userPhoto"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "userName": userName,
        "userMail": userMail,
        "userPassword": userPassword,
        "userToken": userToken,
        "userPhoto": userPhoto,
    };
}
