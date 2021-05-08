import 'package:app/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:app/app/modules/authentication/views/sign_in_view.dart';
import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/icons.dart';
import 'package:app/utils/theme.dart';
import 'package:app/utils/validation.dart';
import 'package:app/widget/CustemButton.dart';
import 'package:app/widget/CustemDropdownButton.dart';
import 'package:app/widget/CustemTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart'; 

class SignUpFoodProviderView extends  GetView<AuthenticationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: AuthenticationLayout(
        title: 'تسجيل حساب كمقدم خدمة',
              body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Form(
                  //key: _formKey,
                  onChanged: (){
                   // _formKey.currentState.validate();
                  },
                  child: Column(
                    children: [
                      CustemTextFormField(
                        textEditingController: controller.nameInputField,
                        hintText: 'full name'.tr,
                        iconPath: IconUserPlus,
                        textInputType: textType.text,
                        onValidator: (value) {
                          return Validation.checkEmpty(value);
                        },
                        onChanged: (value) {
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
                      CustemTextFormField(
                        hintText: 'Location - Str'.tr,
                        iconPath: IconLocation,
                        textInputType: textType.text,
                        textEditingController: controller.addressInputField,
                        onValidator: (value) {
                          return Validation.checkEmpty(value);
                        },
                      ),
                      
                      SizedBox(
                        height: 10,
                      ),
                      CustemTextFormField(
                        hintText: 'description'.tr,
                        iconPath: IconDescription,
                        textInputType: textType.textarea,
                        textEditingController: controller.descriptionInputField,
                        onValidator: (value) {
                          return Validation.checkEmpty(value);
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
                      ) ,
                      SizedBox(
                        height: 10,
                      ),
                      CustemButton(
                        title: 'Create an account'.tr,
                        ontap: () async {
                         /*
                          if (_formKey.currentState.validate()) {
                            await controller.createFoodProviderUser();
                          }
                          ;
                          */
                           Get.toNamed(Routes.SignIn);
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    ),
      )
    );
  }
}
  