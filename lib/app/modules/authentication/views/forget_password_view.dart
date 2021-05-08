import 'package:app/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:app/app/modules/authentication/views/sign_in_view.dart';
import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/constants.dart';
import 'package:app/utils/icons.dart';
import 'package:app/utils/theme.dart';
import 'package:app/utils/utils.dart';
import 'package:app/utils/validation.dart';
import 'package:app/widget/AuthorizationBackground.dart';
import 'package:app/widget/CustemButton.dart';
import 'package:app/widget/CustemInkWell.dart';
import 'package:app/widget/CustemLogo.dart';
import 'package:app/widget/CustemTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordView extends GetView<AuthenticationController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      title: 'نسيت كلمة المرو',
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustemTextFormField(
                hintText: '__@__',
                iconPath: IconEmail,
                textInputType: textType.text,
                textEditingController: controller.emailInputFiled,
                onValidator: (value) {
                  return Validation.checkEmail(value);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: CustemButton(
                  title: 'Send the password'.tr,
                  ontap: () async {
                    /*
                    _formKey.currentState.validate();
                    if (_formKey.currentState.validate()) {
                      await controller.sendPasswordResetEmail();
                    }
                    */

                    Utils().showDialog(AppName, 'تم ارسال رابط تغير كلمة السر على البريد الالكترونى برجاء تغير كلمة السر ', (){
                      Get.back();
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
