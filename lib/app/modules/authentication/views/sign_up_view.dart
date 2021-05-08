import 'package:app/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:app/utils/enumeration.dart';
import 'package:app/utils/icons.dart';
import 'package:app/utils/theme.dart';
import 'package:app/utils/validation.dart';
import 'package:app/widget/CustemButton.dart';
import 'package:app/widget/CustemTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart'; 

class SignUpView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
        children: [
          Body()
         
        ],
      
    ));
  }
}



class Body extends GetView<AuthenticationController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorPrimary,
          elevation: 2,
          centerTitle: true,
          title: Text(
            'Resgstrion new acount'.tr,
            style: TextStyle(fontSize: 14),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('FoodProvider'.tr),
              ),
              Tab(
                child: Text('EventMacker'.tr),
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            child: SignUpFoodProvider(),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Form(
                    key: _formKey,
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
                              if (_formKey.currentState.validate()) {
                                await controller
                                    .createEventMackerUser();
                              }
                              ;
                            })
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}


class SignUpFoodProvider extends GetView<AuthenticationController> {
  //SignupController _controller = Get.put(SignupController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              Form(
                key: _formKey,
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
                    RatingBar.builder(
                      textDirection: TextDirection.rtl,
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: ColorPrimary,
                      ),
                      onRatingUpdate: (rating) {
                        controller.setRating(rating);
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
                        if (_formKey.currentState.validate()) {
                          await controller.createFoodProviderUser();
                        }
                        ;
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


  