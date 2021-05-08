import 'package:app/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/icons.dart';
import 'package:app/utils/theme.dart';
import 'package:app/utils/validation.dart';
import 'package:app/widget/AuthorizationBackground.dart';
import 'package:app/widget/CustemButton.dart';
import 'package:app/widget/CustemInkWell.dart';
import 'package:app/widget/CustemLogo.dart';
import 'package:app/widget/CustemTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInView extends GetView<AuthenticationController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //  return test(formKey: _formKey, controller: controller, controller: controller, controller: controller);

    return AuthenticationLayout(
      title: 'تسجيل دخول',
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CustemTextFormField(
                hintText: 'email'.tr,
                iconPath: IconEmail,
                textEditingController: controller.userInputFiledController,
                keyboardType: TextInputType.emailAddress,
                onValidator: (value) {
                  return Validation.checkEmail(value);
                },
              ),
              SizedBox(
                height: 15,
              ),
              CustemTextFormField(
                hintText: 'password'.tr,
                iconPath: IconPassword,
                textInputType: textType.password,
                keyboardType: TextInputType.text,
                onValidator: (value) {
                  return Validation.checkEmpty(value);
                },
                textEditingController: controller.passwordInputFiledController,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: CustemButton(
                  title: 'signin'.tr,
                  ontap: () {
                     Get.toNamed(Routes.EVENT_MACKER);
                     /*
                    if (_formKey.currentState.validate()) {
                     

                      // FocusScope.of(context).unfocus();
                      //controller.signInWithEmailAndPassword();
                    }*/
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: (){
                    Get.toNamed(Routes.ForgetPassword);
                },
                child: Text('forget password'.tr),
              ),
                  SizedBox(
                height: 25,
              ),
/*
              CustemInkWell(
                title: 'forget password'.tr,
                ontaptitle: () {
                  Get.toNamed(Routes.ForgetPassword);
                },
                subtitle: '',
                ontapsubtitle: () {
                  Get.toNamed(Routes.SignUp);
                },
              )
              */
            ],
          ),
        ),
      ),
    );
  }
}

class AuthenticationLayout extends StatelessWidget {
  const AuthenticationLayout({
    Key key,
    this.title,
    this.body,
  }) : super(key: key);
  final String title;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: Get.height * .4,
            decoration: BoxDecoration(
              gradient: lineargradient,
              color: Colors.green,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: Get.width * .93,
                height: Get.height * .3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                    )
                  ],
                  color: Colors.white,
                ),
                child: Center(
                  child: CustemLogo(
                    tilte: title,
                  ),
                ),
              ),
            ),
          ),
          Container(
            //height: Get.height * .6,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: Get.width * .93,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: body,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class test extends StatelessWidget {
  const test({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required this.controller,
    // @required this.controller,
    // @required this.controller,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final AuthenticationController controller;
  // final AuthenticationController controller;
  //final AuthenticationController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AuthorizationBackground(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: MediaQuery.of(context).size.height * .7,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: CustemLogo(
                              tilte: 'signin'.tr,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustemTextFormField(
                              hintText: 'username'.tr,
                              iconPath: IconEmail,
                              textEditingController:
                                  controller.userInputFiledController,
                              keyboardType: TextInputType.emailAddress,
                              onValidator: (value) {
                                return Validation.checkEmail(value);
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          CustemTextFormField(
                            hintText: 'password'.tr,
                            iconPath: IconPassword,
                            textInputType: textType.password,
                            keyboardType: TextInputType.text,
                            onValidator: (value) {
                              return Validation.checkEmpty(value);
                            },
                            textEditingController:
                                controller.passwordInputFiledController,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            child: CustemButton(
                              title: 'signin'.tr,
                              ontap: () {
                                if (_formKey.currentState.validate()) {
                                  FocusScope.of(context).unfocus();
                                  controller.signInWithEmailAndPassword();
                                }
                                ;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          CustemInkWell(
                            title: 'forget password'.tr,
                            ontaptitle: () {
                              Get.toNamed(Routes.ForgetPassword);
                            },
                            subtitle: 'Create an account'.tr,
                            ontapsubtitle: () {
                              Get.toNamed(Routes.SignUp);
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
