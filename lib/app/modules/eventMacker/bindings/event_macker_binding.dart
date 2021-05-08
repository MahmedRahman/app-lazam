import 'package:app/app/modules/eventMacker/controllers/event_controller.dart';
import 'package:get/get.dart';


class EventMackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventMackerController>(
      () => EventMackerController(),
    );
  }
}
