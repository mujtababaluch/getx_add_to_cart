
import 'laundry_cart_body.dart';

List<LaundryCartBody> dummyCartList = [
  LaundryCartBody(
    servicesId: 1,
    items: [
      LaundryItemBody(
        laundryItemId: 101,
        name: "Shirt",
        quantity: 0,
        price: 150,
        barCode: "SHRT001",
        addons: [
          LaundryCartAddonBody(
            id: 1,
            name: "Extra Softener",
            price: 50,
            qty: 0,
          ),
          LaundryCartAddonBody(
            id: 2,
            name: "Stain Removal",
            price: 100,
            qty: 0,
          ),
        ],
      ),
      LaundryItemBody(
        laundryItemId: 102,
        name: "Pants",
        quantity: 0,
        price: 200,
        barCode: "PANT001",
        addons: [
          
        ],
      ),
    ],
  ),
  LaundryCartBody(
    servicesId: 2,
    items: [
      LaundryItemBody(
        laundryItemId: 201,
        name: "Jacket",
        quantity: 0,
        price: 500,
        barCode: "JCKT001",
        addons: [
          LaundryCartAddonBody(
            id: 4,
            name: "Dry Cleaning",
            price: 150,
            qty: 0,
          ),
        ],
      ),
      LaundryItemBody(
        laundryItemId: 202,
        name: "Blanket",
        quantity: 0,
        price: 800,
        barCode: "BLKT001",
        addons: [],
      ),
    ],
  ),
];
