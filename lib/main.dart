import 'package:big_mad_burger/screen_1.dart';
import 'package:big_mad_burger/screen_2.dart';
import 'package:big_mad_burger/screen_3.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation.dart';
import 'demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigationn(),
    );
  }
}
