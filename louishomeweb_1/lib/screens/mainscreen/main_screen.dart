import 'package:flutter/material.dart';
import 'package:louishomeweb_1/data/style.dart';

import 'package:get/get.dart';
import 'package:louishomeweb_1/screens/mainscreen/main_middle.dart';
import 'package:louishomeweb_1/screens/mainscreen/main_upper.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainBar,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 1200,
            height: context.height * 10,
            child: Column(
              children: [
                mainUpper(),
                mainMiddleScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
