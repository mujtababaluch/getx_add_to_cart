import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_add_to_cart/src/presentation/select_your_item/select_your_item_controller.dart';

class SelectYourItemView extends GetView<SelectYourItemController> {
  const SelectYourItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectYourItemController>(
      builder: (controller) {
        return Text("Sssssss");
      },);
  }
}