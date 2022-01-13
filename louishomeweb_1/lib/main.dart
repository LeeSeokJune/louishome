import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:louishomeweb_1/data/style.dart';
import 'package:louishomeweb_1/screens/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: font,
        primaryColor: colors[0],
      ),
      home: MainScreen(),
    );
  }
}
