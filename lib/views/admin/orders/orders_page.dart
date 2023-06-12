import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manage_store/themes/colors.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});
  static const List<Map<String, dynamic>> items = [
    {
      'icon': Icon(
        Icons.fiber_new_rounded,
        size: 32,
        color: white,
      ),
      'label': 'New Orders',
      'color': Colors.pink
    },
    {
      'icon': Icon(
        Icons.local_shipping_rounded,
        size: 32,
        color: white,
      ),
      'label': 'Shipped Orders',
      'color': Color.fromARGB(255, 232, 208, 0)
    },
    {
      'icon': Icon(
        Icons.task_alt,
        size: 32,
        color: white,
      ),
      'label': 'Delivered Orders',
      'color': Colors.green
    },
    {
      'icon': Icon(
        Icons.cancel,
        size: 32,
        color: white,
      ),
      'label': 'Cancelled Orders',
      'color': Colors.red
    },
    {
      'icon': Icon(
        Icons.shopping_bag_rounded,
        size: 32,
        color: white,
      ),
      'label': 'All Orders',
      'color': Colors.blue
    },
  ];
  @override
  Widget build(BuildContext context) {
    print('orders page');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Orders'),
          backgroundColor: primaryColor,
          actions: [
            GestureDetector(
              onTap: () => bottomSheet(context),
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
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: items[index]['color'],
                      child: items[index]['icon'],
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      items[index]['label'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  bottomSheet(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView(
              children: [
                ListTile(
                  title: const Text('Filter orders by'),
                  trailing: IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(Icons.close)),
                ),
                const Divider()
              ],
            ),
          );
        });
  }
}
