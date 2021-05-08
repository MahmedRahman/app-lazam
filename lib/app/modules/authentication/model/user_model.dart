// To parse this JSON data, do
//
//     final UserModel = UserModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    UserModel({
        this.name='',
        this.description='',
        this.status,
        this.address='',
        this.email='',
        this.userName='',
        this.phoneNumber='',
        this.password='',
        this.confirmPassword,
        this.logo,
        this.logoFile,
        this.categoryId = 5,
        this.typeId,
    });

    String name;
    String description;
    int status;
    String address;
    String email;
    String userName;
    String phoneNumber;
    String password;
    String confirmPassword;
    String logo;
    dynamic logoFile;
    int categoryId;
    int typeId;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["Name"],
        description: json["Description"],
        status: json["Status"],
        address: json["Address"],
        email: json["Email"],
        userName: json["UserName"],
        phoneNumber: json["PhoneNumber"],
        password: json["Password"],
        confirmPassword: json["ConfirmPassword"],
        logo: json["Logo"],
        logoFile: json["LogoFile"],
        categoryId: json["CategoryId"],
        typeId: json["TypeId"],
    );

    Map<String, dynamic> toJson() => {
        "Name": name,
        "Description": description,
        "Status": status,
        "Address": address,
        "Email": email,
        "UserName": userName,
        "PhoneNumber": phoneNumber,
        "Password": password,
        "ConfirmPassword": confirmPassword,
        "Logo": logo,
        "LogoFile": logoFile,
        "CategoryId": categoryId,
        "TypeId": typeId,
    };
}
