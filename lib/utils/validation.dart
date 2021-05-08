import 'package:get/get.dart';

class Validation {
  static String checkEmail(String value) {
    if (GetUtils.isEmail(value) == false) {
      return 'Not vaild Email'.tr;
    } else {
      return null;
    }
  }

  static String checkEmpty(String value) {
    if (value.isEmpty) {
      return 'Empty String'.tr;
    }
    return null;
  }

/*
 static String checkMorethan(String value , int length) {
    if (value.toString().length < length) {
      return 'Enter a valid password!';
    }
    return null;
  }
*/

  static String checkMobile(String value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return 'Please enter mobile number'.tr;
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number'.tr;
    }
    return null;
  }
}
