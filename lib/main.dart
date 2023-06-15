import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:manage_store/themes/colors.dart';
import 'views/views.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor:Colors.black, // navigation bar color
    statusBarColor: primaryColor, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: GetMaterialApp(
        defaultTransition: Transition.cupertino,
        debugShowCheckedModeBanner: false,
        title: 'Manage Store',
        theme: ThemeData(
          scaffoldBackgroundColor: white,
          primarySwatch: Colors.blue,
        ),
        home: const LandingPage(),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
