import 'dart:convert';

import 'package:app/app/modules/authentication/model/replay_model.dart';
import 'package:app/app/modules/authentication/model/user_model.dart';
import 'package:app/app/modules/authentication/model/user_token_model.dart';
import 'package:app/app/modules/authentication/provider/authentication_provider.dart';
import 'package:app/app/routes/app_pages.dart';
import 'package:app/services/services.dart';
import 'package:app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  TextEditingController userInputFiledController = TextEditingController();
  TextEditingController passwordInputFiledController = TextEditingController();
  TextEditingController emailInputFiled = TextEditingController();

  UserModel _userModel = UserModel();

  TextEditingController nameInputField = TextEditingController();
  TextEditingController emailInputField = TextEditingController();
  TextEditingController phoneInputField = TextEditingController();
  TextEditingController addressInputField = TextEditingController();
  TextEditingController descriptionInputField = TextEditingController();
  TextEditingController userInputField = TextEditingController();
  TextEditingController passwordInputField = TextEditingController();

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  signInWithEmailAndPassword() async {
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);

    await AuthenticationProvider()
        .signInWithEmailAndPassword(
            userInputFiledController.text, passwordInputFiledController.text)
        .then((value) {

        Get.back();
        UserTokenModel userTokenModel = userTokenModelFromJson(value);

        Get.find<Services>().setUserRole(userTokenModel.role.toString());
        Get.find<Services>()
            .setUserToken(userTokenModel.accessToken.toString());

        Utils().showSnackBar('signin'.tr, 'signin done'.tr, snackbarStatus: (val) {
          if (val == SnackbarStatus.CLOSED) {
            Get.find<Services>().userRoute();
          }
        });


    }, onError: (err) {
      Get.back();
      
      Utils().showSnackBar('', err.toString());
    });
  }

  sendPasswordResetEmail() async {
    await AuthenticationProvider()
        .sendPasswordResetEmail(emailInputFiled.text)
        .then((value) {
      final replay = replayFromJson(value);
      emailInputFiled.text = '';
      Utils().showDialog('title'.tr, 'Email not confirmed'.tr, () {
        Get.toNamed(Routes.SignIn);
      });
    }, onError: (err) {
      Get.snackbar('title'.tr, err.toString());
    });
  }

  void setRating(double ratting) {
    _userModel.categoryId = ratting.toInt();
  }

  void createFoodProviderUser() async {
    fillUserModel();

    await AuthenticationProvider()
        .createFoodProviderUser(_userModel)
        .then((value) {
      final replay = replayFromJson(value);
      if (replay.isSuccess) {
        clearTextEditingControllers();

        Utils().showDialog('Save'.tr, 'Save Done'.tr, () {
          // Get.toNamed(Routes.SignIn);
        });
      } else {
        Get.snackbar(
          'error'.tr,
          replay.message,
          backgroundColor: Colors.red[200],
        );
      }
    });
/*
    switch (response.statusCode) {
      case 200:
        Replay replay = replayFromJson(response.body);
        if (replay.isSuccess == true) {
          clearTextEditingControllers();

          Utils().showDialog('Save'.tr, 'Save Done'.tr, () {
           // Get.toNamed(Routes.SignIn);
          });
        } else {
          Get.snackbar(
            'error'.tr,
            replay.message,
            backgroundColor: Colors.red[200],
          );
        }
        break;
      default:
        Get.snackbar(
          'error'.tr,
          'error'.tr,
          backgroundColor: Colors.red[200],
        );
    }
*/
  }

  void createEventMackerUser() async {
    fillUserModel();
    await AuthenticationProvider()
        .createEventMackerUser(_userModel)
        .then((value) {
      final replay = replayFromJson(value);
      if (replay.isSuccess) {
        clearTextEditingControllers();

        Utils().showDialog('Save'.tr, 'Save Done'.tr, () {
          // Get.toNamed(Routes.SignIn);
        });
      } else {
        Get.snackbar(
          'error'.tr,
          replay.message,
          backgroundColor: Colors.red[200],
        );
      }
    });

  }


  void fillUserModel() {
    _userModel.name = nameInputField.text;
    _userModel.phoneNumber = phoneInputField.text;
    _userModel.email = emailInputField.text;
    _userModel.address = addressInputField.text;
    _userModel.description = descriptionInputField.text;
    _userModel.userName = emailInputField.text;
    _userModel.password = passwordInputField.text;
    _userModel.confirmPassword = passwordInputField.text;
  }

  void clearTextEditingControllers() {
    nameInputField.clear();
    phoneInputField.clear();
    emailInputField.clear();
    addressInputField.clear();
    descriptionInputField.clear();
    userInputField.clear();
    passwordInputField.clear();
  }

}
