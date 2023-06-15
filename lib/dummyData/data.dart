import 'package:manage_store/models/models.dart';

final List<OrderModel> data = [
  OrderModel(
      name: 'sai kumar kusangi',
      orderId: '132455',
      stage: 'new',
      totalAmount: 2300,
      totalItems: 2,
      paymentMode: 'Online Payment'),
  OrderModel(
      name: 'Subba Rao',
      orderId: '87553',
      stage: 'new',
      totalAmount: 8300,
      totalItems: 5,
      paymentMode: 'Online Payment'),
  OrderModel(
      name: 'bubby',
      orderId: '578555',
      stage: 'delivered',
      totalAmount: 1290,
      totalItems: 1,
      paymentMode: 'COD'),
  OrderModel(
      name: 'kalyan ram',
      orderId: '237647',
      stage: 'shipped',
      totalAmount: 6900,
      totalItems: 4,
      paymentMode: 'COD')
];
