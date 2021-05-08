import 'package:app/utils/theme.dart' as theme;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {
  void showDialog(String title, String content, Function onPressed) {
    Get.defaultDialog(
      title: title,
      titleStyle: TextStyle(
        color: theme.ColorAccent,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      
      radius: 10,
      middleText: 'Save Done'.tr,
      content: Container(
        child: Column(
          children: [
         
            Text(
              content,
              style: TextStyle(
                
                color: theme.ColorAccent,
                fontSize: 14,
                
              ),
              textAlign: TextAlign.center,
            ),
         
          ],
        ),
      ),
      confirm: RaisedButton(
        color: theme.ColorAccent,
        
        child: Text('Done'.tr),
        elevation: 2,

        onPressed: onPressed,
      ),
      backgroundColor: theme.ColorPrimary,
      buttonColor: theme.ColorAccent,
      barrierDismissible: false,

    );
  }

  void showSnackBar(String title, String message, {Function snackbarStatus}) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: theme.ColorPrimary,
        colorText: Colors.white,
        overlayBlur: 4,
        borderWidth: 2,
        margin: EdgeInsets.all(10),
        borderColor: theme.ColorAccent,
        snackbarStatus: snackbarStatus);
  }
}
