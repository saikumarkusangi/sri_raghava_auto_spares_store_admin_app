import 'package:flutter/material.dart';
import 'package:manage_store/themes/colors.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
     print('offers page');
    return   Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        title: const Text('Offers'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children:[
          Center(child: Text('offers'),)
          ],
        ),
      ),
    );
  }
}