import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_add_to_cart/src/presentation/select_your_item/select_your_item_controller.dart';

class SelectYourItemView extends GetView<SelectYourItemController> {
  const SelectYourItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectYourItemController>(
      builder: (controller) {
        return ListView.builder(
        itemCount: controller.cartListdata.length,
        itemBuilder: (context, index) {
          var cart = controller.cartListdata[index];
          return ExpansionTile(
            title: Text("Service ID: ${cart.servicesId}"),
            children: cart.items!.map((item) {
              return Column(
                children: [
                  ListTile(
                    title: Text("${item.name}"),
                    subtitle: Text(" Price: ${item.price}",style: const TextStyle(fontSize: 16),),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, 
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            // Decrease quantity logic here
                          },
                        ),
                        Text("${controller.getQuantity(item.laundryItemId!,cart.servicesId!)}",
                        style: const TextStyle(fontSize: 16.0),
                        ), 
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            controller.setQuantity(item.laundryItemId!, cart.servicesId!, true, isFromCart: false);
                            controller.saveCartToStorage();
                          },
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 16.0),
                  //   child: item.addons!.isNotEmpty
                  //       ? Column(
                  //     children: item.addons!.map((addon) {
                  //       return ListTile(
                  //         title: Text("${addon.name}"),
                  //         subtitle: Text("Quantity: ${addon.qty}, Price: ${addon.price}"),
                  //       );
                  //     }).toList(),
                  //   ): const SizedBox.shrink(),
                  // )
                ],
              );
            }).toList(),

          );
        },
      );
      },);
  }
}