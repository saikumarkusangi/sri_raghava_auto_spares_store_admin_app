import 'package:flutter/material.dart';
import 'package:manage_store/themes/colors.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:gradient_slide_to_act/gradient_slide_to_act.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          title: const Text('Order Details'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'cancel order',
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  )),
            )
          ],
        ),
        body: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: primaryColor)),
                  child: EasyStepper(
                    activeStep: activeStep,
                    lineLength: 70,
                    lineSpace: 0,
                    lineType: LineType.normal,
                    defaultLineColor: Colors.grey.withOpacity(0.4),
                    finishedLineColor: Colors.green,
                    activeStepTextColor: Colors.green,
                    finishedStepTextColor: Colors.green,
                    showLoadingAnimation: false,
                    stepRadius: 25,
                    steps: [
                      EasyStep(
                        customStep: CircleAvatar(
                          backgroundColor: activeStep >= 0
                              ? Colors.pink
                              : Colors.grey.withOpacity(0.5),
                          child: const Icon(
                            Icons.fiber_new_rounded,
                            color: Colors.white,
                          ),
                        ),
                        title: 'Order \nReceived',
                      ),
                      EasyStep(
                        customStep: CircleAvatar(
                          backgroundColor: activeStep >= 1
                              ? const Color.fromARGB(255, 232, 208, 0)
                              : Colors.grey.withOpacity(0.5),
                          child: const Icon(
                            Icons.local_shipping_outlined,
                            color: Colors.white,
                          ),
                        ),
                        title: 'Order \nShipped',
                      ),
                      EasyStep(
                        customStep: CircleAvatar(
                          backgroundColor: activeStep >= 2
                              ? Colors.green
                              : Colors.grey.withOpacity(0.5),
                          child: const Icon(
                            Icons.task_alt,
                            color: Colors.white,
                          ),
                        ),
                        title: 'Order \nDelivered',
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('sai'),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: primaryColor,
                          ),
                          Icon(
                            Icons.wechat,
                            color: primaryColor,
                          ),
                        ],
                      )
                    ]),
              ),
              const Divider(),
              const ListTile(
                title: Text(
                  'Total Items',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                trailing: Text('2'),
              ),
              Card(
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  leading: Image.network(
                      'https://www.pngitem.com/pimgs/m/161-1617477_hero-honda-cbz-xtreme-bike-spare-parts-hero.png'),
                  title: const Text('Hero Honda Cbz Xtreme Bike Head Part'),
                  subtitle: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('quantity:2'), Text('1800')],
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.network(
                      'https://www.pngitem.com/pimgs/m/161-1617477_hero-honda-cbz-xtreme-bike-spare-parts-hero.png'),
                  title: const Text('Hero Honda Cbz Xtreme Bike Head Part'),
                  subtitle: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('quantity:2'), Text('1800')],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Detailed Bill',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cart Total',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('1800')
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Charges',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('200')
                  ],
                ),
              )
            ]),
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: activeStep == 0
                    ? GradientSlideToAct(
                        text: 'Slide to Accept Order',
                        width: MediaQuery.of(context).size.width * 0.9,
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 15),
                        backgroundColor: const Color(0Xff172663),
                        onSubmit: () {},
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff0da6c2),
                              Color(0xff0E39C6),
                            ]),
                      )
                    : activeStep == 1
                        ? GradientSlideToAct(
                            text: 'Slide After Shipping Order',
                            width: MediaQuery.of(context).size.width * 0.9,
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 15),
                            backgroundColor: const Color(0Xff172663),
                            onSubmit: () {
                              setState(() {
                                activeStep += 1;
                              });
                            },
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff0da6c2),
                                  Color(0xff0E39C6),
                                ]),
                          )
                        : GradientSlideToAct(
                            text: 'Slide After Delivery',
                            width: MediaQuery.of(context).size.width * 0.9,
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 15),
                            backgroundColor: const Color(0Xff172663),
                            onSubmit: () {
                              setState(() {
                                activeStep += 1;
                              });
                            },
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff0da6c2),
                                  Color(0xff0E39C6),
                                ]),
                          ),
              ),
            )
          ],
        ));
  }
}
