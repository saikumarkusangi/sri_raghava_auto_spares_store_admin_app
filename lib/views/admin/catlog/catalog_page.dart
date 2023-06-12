import 'package:flutter/material.dart';
import 'package:manage_store/themes/colors.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('catalog page');
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primaryColor,
          title: Text(
            'Catalog',
            style: TextStyle(color: white),
          ),
        ),
        body: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlutterLogo(
                        size: 62,
                      ),
                    );
                  }),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.7,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 200),
                  itemBuilder: (contexxt, index) {
                    return FlutterLogo(
                      size: 54,
                    );
                  }),
            )
          ],
        ));
  }
}
