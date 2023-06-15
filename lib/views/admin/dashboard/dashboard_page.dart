import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manage_store/themes/colors.dart';

import 'widgets/widgets.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: RefreshIndicator(
         onRefresh: ()async{},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const StoreStatus(),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                  title: const Text('Business summary'),
                  subtitle: const Text('Glance of business summary'),
                  trailing: SizedBox(
                    width: 70,
                    child: InkWell(
                      onTap: () => filterSheet(context),
                      child: const Row(
                        children: [
                          Text(
                            'Today',
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.black,
                            size: 28,
                          ),
                        ],
                      ),
                    ),
                  )),
              const OverViewCards(),
              // const Card(
              //   elevation: 5,
              //   child: ListTile(
              //     tileColor: Colors.lightBlue,
              //     leading: Icon(
              //       Icons.add_circle,
              //     ),
              //     title: Text('ADD NEW OFFER', style: TextStyle(fontSize: 18)),
              //   ),
              // ),
              // const Card(
              //   elevation: 5,
              //   child: ListTile(
              //     tileColor: Color.fromARGB(255, 35, 255, 163),
              //     leading: Icon(
              //       Icons.add_circle,
              //     ),
              //     title: Text(
              //       'ADD NEW PRODUCT',
              //       style: TextStyle(fontSize: 18),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              Chart()
            ],
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
