import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manage_store/themes/colors.dart';
import '../../../models/models.dart';
import 'order_details.dart';

class AllOrders extends StatelessWidget {
  const AllOrders({super.key, required this.title, required this.data});
  final String title;
  final List<OrderModel> data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text(title),
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
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Get.to(const OrderDetails()),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Order Id:${item.orderId}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          item.stage!,
                          style: const TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(DateTime.now().toString()),
                      ),
                      const Divider(
                        color: Colors.black54,
                      ),
                      ListTile(
                        title: const Text(
                          'Name',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          item.name!,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          'Total Items',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          item.totalItems.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          'Total Amount',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          item.totalAmount.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          'Payment Mode',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          item.paymentMode!,
                          style: const TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
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
                    'Filter By',
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
