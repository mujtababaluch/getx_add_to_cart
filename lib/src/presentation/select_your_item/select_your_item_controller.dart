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
  void addtocart(int serviceId, int laundryItemId, int quantity,double price, String name,
    {LaundryCartAddonBody? selectedAddon}){
      LaundryCartBody? cartitem;
      for(int i=0; i<cartLisst.length;i++){
        if(cartLisst[i].servicesId == serviceId){
          cartitem = cartLisst[i];
          break;
        }
      }
      if(cartitem !=null){
        LaundryItemBody? item;
        for(int i=0; i<cartitem.items!.length;i++){
          if(cartitem.items![i].laundryItemId == laundryItemId){
            item = cartitem.items![i];
            break;
          }
        }
        if(item !=null){
          item.quantity = item.quantity! + quantity;
      }
      else {
        cartitem.items!.add(LaundryItemBody(
          laundryItemId: laundryItemId,
          quantity: quantity,
          price: price,
          name: name,
          addons: []
        ));}
      }
      else {
        cartLisst.add(LaundryCartBody(
          servicesId: serviceId,
          items: [LaundryItemBody(
            laundryItemId: laundryItemId,
            quantity: quantity,
            price: price,
            name: name,
            addons: []
          )]
        ));
      }
       update();
    }
 Future<void>  saveCartToStorage() async {
    List<Map<String, dynamic>> cartjson = cartLisst.map(
      (cartitem) => {
        'servicesId' :cartitem.servicesId,
        'items':cartitem.items!.map((item)=>{
          "laundryItemId" : item.laundryItemId,
          "quantity": item.quantity,
          "price": item.price,
          "name": item.name,
          "addons" : item.addons!.map((addon)=> {
            "addonId": addon.id,
            "quantity": addon.qty,
            "price": addon.price,
            "name": addon.name
          }).toList()
        }).toList()
      }).toList();
      
    print('cartjson: $cartjson');
 }
}