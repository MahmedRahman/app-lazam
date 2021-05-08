import 'package:get/get.dart';

import 'package:app/app/modules/authentication/controllers/authentication_controller.dart';

class AuthenticationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticationController>(
      () => AuthenticationController(),
    );
  }
}
