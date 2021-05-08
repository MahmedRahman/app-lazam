import 'package:get/get.dart';

class EventController extends GetxController {
  //TODO: Implement EventController
  
  final count = 0.obs;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  void increment() => count.value++;
}
