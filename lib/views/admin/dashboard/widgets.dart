import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        tileColor: Color(0xFFcce3de),
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        leading:!status ?
        Image.network('https://static.vecteezy.com/system/resources/previews/012/042/292/original/warning-sign-icon-transparent-background-free-png.png',width: 30,):
         Image.network('https://www.freeiconspng.com/thumbs/ok-icon/check-yes-ok-icon-10.png',width: 30,),
        title:status ? const Text('Online',
        style: TextStyle(color: Colors.green,
        fontSize: 22
        ,fontWeight: FontWeight.bold),) :
        const Text('Offline',style: TextStyle(
          color: Colors.red,fontWeight: FontWeight.bold,fontSize: 22
        ),) ,
        subtitle:  Padding(
          padding: const EdgeInsets.only(top: 10),
          child:status? const Text('Your store is active to receive online orders',
          style: TextStyle(
            fontSize: 18
          ),):
          const Text('Your store is not active to receive online orders',style: TextStyle(
            fontSize: 18
          ),)
        ),
        trailing: CupertinoSwitch(
            value: status,
            activeColor: Colors.green,
            onChanged: (val) {
             setState(() {
                status = val;
             });
            }),
      ),
    );
  }
}
