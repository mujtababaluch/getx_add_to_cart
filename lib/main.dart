import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_add_to_cart/src/config/app_routes.dart';

import 'src/config/get_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Add To Cart',
    initialRoute: AppRoutes.selectYourItemScreen,
    getPages: Routes.getpages(),
    );
  }
}

