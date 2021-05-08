import 'package:get/get.dart';

class EventMackerController extends GetxController {
  //TODO: Implement EventController
  var selectedIndex= 0.obs;
  final count = 0.obs;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  void increment() => count.value++;
}
