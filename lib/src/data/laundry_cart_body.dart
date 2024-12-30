class LaundryItemBody {
  int? laundryItemId;
  String? name = "";
  int? quantity;
  num? price;
  String? barCode;
  List<LaundryCartAddonBody>? addons;

  LaundryItemBody(
      {this.laundryItemId,
      this.name,
      this.quantity,
      this.price,
      this.barCode,
      this.addons});

  LaundryItemBody.fromJson(Map<String, dynamic> json) {
    laundryItemId = json['laundry_item_id'];
    price = json['price'];
    quantity = json['quantity'];
    barCode = json['bar_code'];
    name = json['name'];
    if (json['addons'] != null) {
      addons = <LaundryCartAddonBody>[];
      json['addons'].forEach((v) {
        addons!.add( LaundryCartAddonBody.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['laundry_item_id'] = laundryItemId;
    data['price'] = price;
    data['quantity'] = quantity;
    data['bar_code'] =barCode;
    data['name'] = name;
    data['addons'] =addons!.map((v) => v.toJson()).toList();
    return data;
  }
}

class LaundryCartAddonBody {
  int? id;
  String? name;
  num? price;
  int? qty = 0;

  LaundryCartAddonBody({
    this.id,
    this.name,
    this.price,
    this.qty,
  });

  LaundryCartAddonBody.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = num.parse(json['price'].toString());
    qty = json['qty'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] =name;
    data['price'] =price;
    data['qty'] = qty;
    return data;
  }
}

class LaundryCartBody {
  int? servicesId;
  List<LaundryItemBody>? items;

  LaundryCartBody({this.servicesId, this.items});

  LaundryCartBody.fromJson(Map<String, dynamic> json) {
    servicesId = json['services_id'];
    if (json['items'] != null) {
      items = <LaundryItemBody>[];
      json['items'].forEach((v) {
        items!.add(LaundryItemBody.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['services_id'] = servicesId;
    if (items != null) {
      data['items'] =items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
