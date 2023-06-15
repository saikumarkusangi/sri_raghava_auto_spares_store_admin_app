import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manage_store/themes/colors.dart';
import 'package:manage_store/themes/images.dart';

class StoreStatus extends StatefulWidget {
  const StoreStatus({super.key});

  @override
  State<StoreStatus> createState() => _StoreStatusState();
}

class _StoreStatusState extends State<StoreStatus> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        tileColor: const Color(0xFFcce3de),
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        leading: !status
            ? Image.asset(
                warning,
                width: 28,
              )
            : Image.asset(
                okImg,
                width: 28,
              ),
        title: status
            ? const Text(
                'Online',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            : const Text(
                'Offline',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
        subtitle: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: status
                ? const Text(
                    'Your store is active to receive online orders',
                    style: TextStyle(fontSize: 16),
                  )
                : const Text(
                    'Your store is not active to receive online orders',
                    style: TextStyle(fontSize: 16),
                  )),
        trailing: CupertinoSwitch(
            value: status,
            activeColor: Colors.green,
            onChanged: (val) {
              if (val == false) bottomSheet();
              setState(() {
                status = val;
              });
            }),
      ),
    );
  }

  bottomSheet() {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: context,
        builder: (context) {
          return ListView(
            children: [
              ListTile(
                title: const Text(
                  'Go Online',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                trailing: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Icons.close,
                    
                    )),
              ),
              const Divider(color: Colors.black87,),
              const RadioTileWidget(),
              const Divider(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MaterialButton(
                    height: 50,
                    color: primaryColor,
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text(
                      'confirm',
                      style: TextStyle(
                        fontSize: 20,
                        color: white,
                      ),
                    ),
                  ))
            ],
          );
        });
  }
}

class RadioTileWidget extends StatefulWidget {
  const RadioTileWidget({super.key});

  @override
  State<RadioTileWidget> createState() => _RadioTileWidgetState();
}

enum OnlineTime { one, two, four, twelve, self }

class _RadioTileWidgetState extends State<RadioTileWidget> {
  OnlineTime? time = OnlineTime.one;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
            value: OnlineTime.one,
            groupValue: time,
            title: const Text('After 1 Hour'),
            onChanged: (OnlineTime? val) {
              setState(() {
                time = val;
              });
            }),
        RadioListTile(
            value: OnlineTime.two,
            groupValue: time,
            title: const Text('After 2 Hour'),
            onChanged: (OnlineTime? val) {
              setState(() {
                time = val;
              });
            }),
        RadioListTile(
            value: OnlineTime.four,
            groupValue: time,
            title: const Text('After 4 Hour'),
            onChanged: (OnlineTime? val) {
              setState(() {
                time = val;
              });
            }),
        RadioListTile(
            value: OnlineTime.twelve,
            groupValue: time,
            title: const Text('After 12 Hour'),
            onChanged: (OnlineTime? val) {
              setState(() {
                time = val;
              });
            }),
        RadioListTile(
            value: OnlineTime.self,
            title: const Text('I will go online myself'),
            groupValue: time,
            onChanged: (OnlineTime? val) {
              setState(() {
                time = val;
              });
            }),
      ],
    );
  }
}
