import 'package:app/app/modules/foodProvider/controllers/food_provider_controller.dart';
import 'package:get/get.dart';


class FoodProviderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodProviderController>(
      () => FoodProviderController(),
    );
  }
}
