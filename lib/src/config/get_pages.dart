import 'package:get/get.dart';
import 'package:getx_add_to_cart/src/presentation/select_your_item/select_your_item_screen.dart';

import '../presentation/select_your_item/select_your_item_bindings.dart';
import 'app_routes.dart';

class Routes{
  static List<GetPage> getpages(){
    return [
      GetPage(
        name: AppRoutes.selectYourItemScreen,
        binding: SelectYourItemBindings(),
        page: () => const SelectYourItemScreen(),
      ),
    ];
  }
}