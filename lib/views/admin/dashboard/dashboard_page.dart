import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manage_store/themes/colors.dart';
import 'package:manage_store/themes/images.dart';
import 'package:manage_store/views/admin/dashboard/charts.dart';
import 'package:manage_store/views/admin/dashboard/widgets.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    
    print('dashboard page');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'Dashboard',
          style: TextStyle(color: white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
             const StoreStatus(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    color: Color.fromARGB(255, 147, 39, 255),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(
                         left: 30,right: 30,bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Image.asset(customers,width: 100,),
                          Text(
                            '10',
                            style: TextStyle(
                                fontSize: 28,
                                color: white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'customers',
                            style: TextStyle(fontSize: 20, color: white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 255, 111, 33),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(
                         left: 30,right: 30,bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                                                     Image.asset(products,width: 100,),
                          Text(
                            '100',
                            style: TextStyle(
                                fontSize: 28,
                                color: white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'products',
                            style: TextStyle(fontSize: 20, color: white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Card(
                elevation: 5,
                child: ListTile(
                tileColor: Colors.lightGreen,
                  leading: Icon(Icons.add_circle,),
                  title: Text('ADD NEW OFFER'
                  ,style: TextStyle(
                    fontSize: 18)),
                ),
              ),
              const Card(
                elevation: 5,
                child: ListTile(
                  tileColor: Color.fromARGB(255, 35, 255, 163),
                  leading: Icon(Icons.add_circle,),
                  title: Text('ADD NEW PRODUCT',style: TextStyle(
                    fontSize: 18
                  ),),
                ),
              ),
              const SizedBox(height: 20,),
              Chart()
            ],
          ),
        ),
      ),
    );
  }
}
