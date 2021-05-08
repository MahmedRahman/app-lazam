import 'dart:convert';

import 'package:app/app/modules/authentication/model/user_model.dart';
import 'package:app/services/services.dart';
import 'package:app/utils/enumeration.dart';
import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/connect.dart';
import 'package:get/get.dart';

class AuthenticationProvider extends GetConnect {

Services userSerives = Get.find<Services>();


  Future signInWithEmailAndPassword(String email, String password) async {
    var data = {
      "username": email,
      "password": password,
      "grant_type": "password"
    };
    var parts = [];
    data.forEach((key, value) {
      parts.add('${Uri.encodeQueryComponent(key)}='
          '${Uri.encodeQueryComponent(value)}');
    });
    var formData = parts.join('&');

    Response response = await post('https://lazam.atpnet.net/token', formData,
        headers: <String, String>{
          "Accept": "application/json",
          'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
        });


    if (response.status.hasError) {
      //print(response.body['error_description']);
      return Future.error(response.body['error_description']);
    } else {
      return response.bodyString.toString();
    }
  }

  Future<String> sendPasswordResetEmail(String email) async {
    Map data = <String, dynamic>{
      "Email": email,
    };

    Response response =
        await post(Constants.baesUrl + 'api/Account/ForgotPassword', data);

    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.bodyString;
    }
  }

  Future createFoodProviderUser(UserModel userModel) async {

    String _accountRegisterUrl;

    _accountRegisterUrl = Constants.baesUrl.toString() +
        'api/Account/Register?role=' +
        UserRole.FoodProvider.index.toString();

    Response response = await post(
      _accountRegisterUrl,
      jsonEncode(
        <String, dynamic>{
          "Name": userModel.name,
          "Description": userModel.description,
          "Status": UserStatus.Inactive.toString(),
          "Address": UserRole.FoodProvider,
          "Email": userModel.email,
          "UserName": userModel.email,
          "PhoneNumber": userModel.phoneNumber,
          "Password": userModel.password,
          "ConfirmPassword": userModel.password,
          "Logo": "default",
          "LogoFile": null,
          "CategoryId": userModel.categoryId.toString(),
          "TypeId": UserType.Resturant.toString()
        },
      ).toString(),
    );

    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.bodyString.toString();
    }
  }
  

  Future createEventMackerUser(UserModel userModel) async {

    String _accountRegisterUrl;

    _accountRegisterUrl = Constants.baesUrl.toString() +
        'api/Account/Register?role=' +
        UserRole.EventMacker.index.toString();

    Response response = await post(
      _accountRegisterUrl,
      jsonEncode(
        <String, dynamic>{
          "Name": userModel.name,
          "Description": userModel.description,
          "Status": UserStatus.Inactive.toString(),
          "Address": UserRole.FoodProvider,
          "Email": userModel.email,
          "UserName": userModel.email,
          "PhoneNumber": userModel.phoneNumber,
          "Password": userModel.password,
          "ConfirmPassword": userModel.password,
          "Logo": "default",
          "LogoFile": null,
          "CategoryId": userModel.categoryId.toString(),
          "TypeId": UserType.Resturant.toString()
        },
      ).toString(),
    );

    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.bodyString.toString();
    }
  }

  Future getProfile() async {
    Response response = await get(Constants.baesUrl + 'api/Account/Profile',
        headers: userSerives.getUserHeader());

    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.bodyString;
    }
  }

  editProfile(UserModel userModel) async {
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);

    Response response = await post(
        Constants.baesUrl + 'api/Account/Profile', userModelToJson(userModel),
        headers: userSerives.getUserHeader());

    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      return response.bodyString;
    }
  }


}




