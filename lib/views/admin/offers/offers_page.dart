import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
     print('offers page');
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:const [
          Center(child: Text('offers'),)
          ],
        ),
      ),
    );
  }
}