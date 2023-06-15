import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manage_store/dummyData/data.dart';
import 'package:manage_store/models/order_model.dart';
import 'package:manage_store/themes/colors.dart';
import 'package:manage_store/views/admin/orders/all_orders.dart';

import '../../../constants/constants.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('orders page');
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text('Orders'),
        backgroundColor: primaryColor,
        actions: [
          GestureDetector(
            onTap: () => filterSheet(context),
            child: const Chip(
                elevation: 0,
                side: BorderSide(color: primaryColor),
                backgroundColor: primaryColor,
                avatar: Icon(Icons.tune),
                label: Text(
                  'Filter',
                  style: TextStyle(color: white, fontSize: 18),
                )),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 20,
                childAspectRatio: 0.9,
                crossAxisSpacing: 10),
            itemCount: ordersPageItems.length,
            itemBuilder: (context, index) {
              final List<OrderModel> new_orders = [];
              final  List<OrderModel> shipped_orders = [];
              final  List<OrderModel> delivered_orders = [];
              data.forEach((i) {
                if (i.stage == 'new') {
                  new_orders.add(i);
                } else if (i.stage == 'shipped') {
                  shipped_orders.add(i);
                } else if (i.stage == 'delivered') {
                  delivered_orders.add(i);
                }
              
              });
              return InkWell(
                onTap: () =>
                    Get.to(
                      AllOrders(
                        title: ordersPageItems[index]['label'],
                         data: ordersPageItems[index]['label'] == 'New Orders' ?
                           new_orders : ordersPageItems[index]['label'] == 'Shipped Orders' 
                           ? shipped_orders: delivered_orders ,)),
                child: Container(
                  decoration: BoxDecoration(
                      color: ordersPageItems[index]['bgcolor'],
                      border:
                          Border.all(color: ordersPageItems[index]['color'])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: ordersPageItems[index]['color'],
                        child: ordersPageItems[index]['icon'],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        ordersPageItems[index]['label'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            color: white),
                        child: Text(
                          ordersPageItems[index]['label'] == 'New Orders' ?
                           new_orders.length.toString() : ordersPageItems[index]['label'] == 'Shipped Orders' 
                           ? shipped_orders.length.toString() : delivered_orders.length.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 22),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  filterSheet(context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: context,
        builder: (context) {
          return SizedBox(
            height: 200,
            child: ListView(
              children: [
                ListTile(
                  title: const Text(
                    'Select Duration',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  trailing: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(Icons.close)),
                ),
                const Divider(
                  color: Colors.black87,
                ),
                GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 2),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return FilterChip(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60),
                              side: const BorderSide(
                                  color: primaryColor, width: 1.2)),
                          selected: index == 1,
                          backgroundColor: white,
                          showCheckmark: false,
                          selectedColor: primaryColor,
                          labelStyle: TextStyle(
                              color: index == 1 ? white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                          label: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Today'),
                          ),
                          onSelected: (val) {});
                    })
              ],
            ),
          );
        });
  }
}
