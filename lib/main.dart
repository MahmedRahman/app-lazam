import 'package:app/services/services.dart';
import 'package:app/utils/theme.dart';
import 'package:app/utils/translation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        statusBarColor: ColorSecondary,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: ColorSecondary,
        systemNavigationBarIconBrightness: Brightness.light),
  );

  await GetStorage.init();
  await initServices();
  runApp(MyApp());
}

void initServices() async {
  await Get.putAsync<Services>(() async => await Services());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: TranslationFile(),
      locale: Locale('ar', 'EG'),
      fallbackLocale: Locale('ar', 'EG'),
      debugShowCheckedModeBanner: false,
      title: 'Lazam',
      theme: themeData,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
