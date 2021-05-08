import 'package:app/app/routes/app_pages.dart';
import 'package:app/utils/theme.dart';
import 'package:app/widget/CustemButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionView extends GetView {
  @override
  Widget build(BuildContext context) {
     final introKey = GlobalKey<IntroductionScreenState>();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: IntroductionScreen(
        key: introKey,
        showNextButton: false,
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
            bodyWidget: Center(
                child: Text(
              'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبورأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا .',
              textAlign: TextAlign.center,
            )),
            title: 'نموذج لوريم ايبسوم عربي',
            footer: SizedBox(
              width: Get.width / 2,
              child: CustemButton(
                title: 'تخطى',
                ontap: () {
                  Get.toNamed(Routes.UserRouteView);
                },
              ),
            ),
            image: Image.asset("asset/intro/intro1.png"),
          ),
          PageViewModel(
            bodyWidget: Center(
                child: Text(
              'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبورأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا .',
              textAlign: TextAlign.center,
            )),
            title: 'نموذج لوريم ايبسوم عربي',
            footer: SizedBox(
              width: Get.width / 2,
              child: CustemButton(
                title: 'تخطى',
                ontap: () {
                  Get.toNamed(Routes.UserRouteView);
                },
              ),
            ),
            image: Image.asset("asset/intro/intro2.png"),
          ),
          PageViewModel(
            bodyWidget: Center(
                child: Text(
              'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبورأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا .',
              textAlign: TextAlign.center,
            )),
            title: 'نموذج لوريم ايبسوم عربي',
            footer: SizedBox(
              width: Get.width / 2,
              child: CustemButton(
                title: 'تخطى',
                ontap: () {
                  Get.toNamed(Routes.UserRouteView);
                },
              ),
            ),
            image: Image.asset("asset/intro/intro3.png"),
          )
        ],
        done: Container(),
        onDone: () {},
        nextFlex: 1,
        dotsFlex: 2,
        skipFlex: 1,
        animationDuration: 1000,
        curve: Curves.fastOutSlowIn,
        dotsDecorator: DotsDecorator(
          spacing: EdgeInsets.all(5),
          activeColor: ColorAccent,
          color: ColorPrimary,
          // activeSize: Size.square(10),
          // size: Size.square(5),
          activeSize: Size(20, 10),
          size: Size.square(10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
