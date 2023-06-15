import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manage_store/themes/colors.dart';
import 'package:manage_store/themes/images.dart';
import 'package:manage_store/views/admin/home/home_page.dart';

import 'common.dart';

class LoginPage extends StatelessWidget {
  final String title;
  final String image;
  LoginPage({super.key, required this.title, required this.image});
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print('login page');
    double dwidth = MediaQuery.of(context).size.width;
    double dheight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: white,
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: dwidth * 0.6,
            height: dheight * 0.3,
            child: Stack(
              children: [
                Image.asset(
                  circle,
                  color: primaryColor,
                ),
                Center(child: Image.asset(image)),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Login $title',
            style: const TextStyle(fontSize:26),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFiled(
              hintText: 'Enter user name',
              controller: userNameController,
             ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFiled(
              hintText: 'Enter password',
              controller: passwordController,
             ),
          const SizedBox(
            height: 30,
          ),
          customButton('Login',()=>Get.to(
            title == 'Admin' ? const AdminHomePage()
            : const AdminHomePage()
          ))
        ],
      )),
    ));
  }
}
