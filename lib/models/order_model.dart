class OrderModel {
  String? orderId;
  String? stage;
  String? name;
  int? totalItems;
  int? totalAmount;
  String? paymentMode;

  OrderModel(
      {this.orderId,
      this.stage,
      this.name,
      this.totalItems,
      this.totalAmount,
      this.paymentMode});

  OrderModel.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    stage = json['stage'];
    name = json['name'];
    totalItems = json['total items'];
    totalAmount = json['total amount'];
    paymentMode = json['payment mode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['order_id'] = orderId;
    data['stage'] = stage;
    data['name'] = name;
    data['total items'] = totalItems;
    data['total amount'] = totalAmount;
    data['payment mode'] = paymentMode;
    return data;
  }
}
