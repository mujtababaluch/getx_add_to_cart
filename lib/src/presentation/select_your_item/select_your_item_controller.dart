import 'package:get/get.dart';

import '../../data/dummy_cart_data.dart';
import '../../data/laundry_cart_body.dart';

class SelectYourItemController extends GetxController {
  List<LaundryCartBody> cartListdata =  dummyCartList;
  
  List<LaundryCartBody> cartLisst = [];

int getQuantity(int laundryItemId, int serviceId, ){
  for(int i=0; i<cartLisst.length;i++){
    if(cartLisst[i].servicesId == serviceId){
      for(int j= 0;j<cartLisst.length;j++){
        if(cartLisst[i].items![j].laundryItemId ==laundryItemId){
          return cartLisst[i].items![j].quantity!;
        }
      }
    }
  }
  return 0;
}

void setQuantity(int laundryItemId, int serviceId, bool isIncrement, {bool isFromCart = false}) {
  print('setQuantity called with laundryItemId: $laundryItemId, serviceId: $serviceId');
  print('cartLisst length: ${cartLisst.length}');
  if (cartLisst.isEmpty) {
    print('cartLisst is empty!');
  }
  for (int i = 0; i < cartLisst.length; i++) {
    print('Current serviceId: ${cartLisst[i].servicesId}');
    for (int j = 0; j < cartLisst[i].items!.length; j++) {
      print('Current laundryItemId: ${cartLisst[i].items![j].laundryItemId}');
    }
  }


    
  // for (int i = 0; i < cartLisst.length; i++) {
  //   if (cartLisst[i].servicesId == serviceId) {
  //     if (cartLisst[i].items != null) {
  //       for (int j = 0; j < cartLisst[i].items!.length; j++) {
  //         if (cartLisst[i].items![j].laundryItemId == laundryItemId) {
  //           if (isIncrement) {
  //             var currentQty = cartLisst[i].items![j].quantity ?? 0;
  //             print('Current quantity before increment: $currentQty');
  //             cartLisst[i].items![j].quantity = currentQty + 1;
  //             print('Updated quantity: ${cartLisst[i].items![j].quantity}');
  //           }
  //           break;
  //         }
  //       }
  //     }
  //     break;
  //   }
  // }
  update();
}


}