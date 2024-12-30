import 'package:get/get.dart';

import 'select_your_item_controller.dart';

class SelectYourItemBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectYourItemController>(() => SelectYourItemController());
  }
}