import 'package:flutter/material.dart';
import 'package:getx_add_to_cart/src/presentation/select_your_item/widget/select_your_item_view.dart';

class SelectYourItemScreen extends StatelessWidget {
  const SelectYourItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Select Your Item',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: const SafeArea(child: SelectYourItemView()));
  }
}
