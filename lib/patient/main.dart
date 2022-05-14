

import 'package:flutter/material.dart';

import 'navbar.dart';
import 'navbar.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var widget;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BottomNavBar(),


    );
  }
}