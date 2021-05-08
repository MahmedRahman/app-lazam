import 'package:app/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:app/app/modules/authentication/views/sign_in_view.dart';
import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/icons.dart';
import 'package:app/utils/validation.dart';
import 'package:app/widget/CustemButton.dart';
import 'package:app/widget/CustemDropdownButton.dart';
import 'package:app/widget/CustemTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpEventMackerView extends GetView<AuthenticationController> {
  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      title: 'تسجيل حساب كصاحب مناسبة',
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Form(
                //key: _formKey,
                child: Column(
                  children: [
                    CustemTextFormField(
                      hintText: 'full name'.tr,
                      iconPath: IconUserPlus,
                      textInputType: textType.text,
                      textEditingController: controller.nameInputField,
                      onValidator: (value) {
                        return Validation.checkEmpty(value);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustemTextFormField(
                      hintText: '000-00-000',
                      iconPath: IconPhone,
                      textInputType: textType.text,
                      textEditingController: controller.phoneInputField,
                      onValidator: (value) {
                        return Validation.checkMobile(value);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomDropdownButton(
                      listDropdown: ['اختيار المدينة المطلوبة'],
                      labelDropdownButton: '',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustemTextFormField(
                      hintText: '__@__',
                      iconPath: IconEmail,
                      textInputType: textType.text,
                      textEditingController: controller.emailInputField,
                      onValidator: (value) {
                        return Validation.checkEmail(value);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustemTextFormField(
                      hintText: '********',
                      iconPath: IconPassword,
                      textInputType: textType.password,
                      textEditingController: controller.passwordInputField,
                      onValidator: (value) {
                        return Validation.checkEmpty(value);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustemButton(
                      title: 'Create an account'.tr,
                      ontap: () async {
                        /*
                                if (_formKey.currentState.validate()) {
                                  await controller
                                      .createEventMackerUser();
                                }
                                ;
                                */
                        Get.toNamed(Routes.SignIn);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
