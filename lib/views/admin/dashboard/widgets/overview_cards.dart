import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';
import '../../../../themes/themes.dart';

class OverViewCards extends StatelessWidget {
  const OverViewCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: overViewItems.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
            childAspectRatio: 2.3),
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black38, width: 1.2)),
              child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  leading: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: overViewItems[index]['color'],
                        borderRadius: BorderRadius.circular(8)),
                    child: overViewItems[index]['icon'],
                  ),
                  title: Text(
                    overViewItems[index]['title'] == 'Sale' ? '₹ 100' : '100',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      color: black,
                    ),
                  ),
                  subtitle: Text(
                    overViewItems[index]['title'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 53, 53, 53)),
                  )));
        });
  }
}
