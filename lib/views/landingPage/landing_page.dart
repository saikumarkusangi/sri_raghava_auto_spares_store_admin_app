import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manage_store/common/login_page.dart';
import 'package:manage_store/themes/images.dart';
import 'package:manage_store/views/landingPage/widgets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('landing page');
    double dwidth = MediaQuery.of(context).size.width;
    double dheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
        // Logo
              SizedBox(
                  width: dwidth * 0.5,
                  height: dheight * 0.5,
                  child: Image.network(
                    'https://cdn.shopify.com/s/files/1/0513/1226/3362/products/Asset2_grande.jpg?v=1619802039',
                    fit: BoxFit.contain,
                  )),
      // Heading
             const Text('Select your role',
             style: TextStyle(
              fontSize: 24
             ),),
    
             const SizedBox(height: 50,),
      // Buttons
            button(Icons.person,
             'Admin',
            ()=>Get.to(LoginPage(title: 'Admin',
            image: adminImage,
            ))),
            
            const SizedBox(height: 20,),

            button(Icons.delivery_dining,
               'Delivery Boy',
               ()=>Get.to(LoginPage(title: 'Delivery Boy',
                image: delivaryBoyImage,
               )))
            ],
          ),
        ),
      ),
    );
  }
}
