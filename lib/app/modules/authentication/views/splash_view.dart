import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart'; 

class SplashView extends GetView {
  // ImageProvider logo = AssetImage("images/logo_rienpa.png");

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: lineargradient,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                         Get.toNamed(Routes.Introduction);
                   // Navigator.pushNamed(context, RouteSignInScreen);
                  },
                  child: SizedBox(
                    width: 180,
                    height: 180,
                    child: SvgPicture.asset(logo[2]),
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: .5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text('', style: StyleText[0]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
  