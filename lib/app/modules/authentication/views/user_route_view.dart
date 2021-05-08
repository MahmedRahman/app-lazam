import 'package:app/app/modules/authentication/views/sign_in_view.dart';
import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/theme.dart';
import 'package:app/widget/CustemButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRouteView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthenticationLayout(
      title: 'اهلا بيكم فى لزم',
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: Get.height * .4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(
                flex: 2,
              ),
              CustemButton(
                title: 'signin'.tr,
                ontap: () {
                  Get.toNamed(Routes.SignIn);
                },
              ),
              Spacer(
                flex: 1,
              ),
               
              Text(
                'إنشاء حساب جديد',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Row(
                children: [
                  Flexible(
                    child: CustemButton(
                      title: 'صاحب مناسبة',
                      ontap: () {
                         Get.toNamed(Routes.SignUpEventMackerView);
                      },
                    ),
                  ),
                  Flexible(
                    child: CustemButton(
                      title: 'مقدم خدمة',
                      ontap: () {
                          Get.toNamed(Routes.SignUpFoodProviderView);
                      },
                    ),
                  ),
                ],
              ),
        
            ],
          ),
        ),
      ),
    ));
  }
}
