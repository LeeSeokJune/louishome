import 'package:flutter/material.dart';
import 'package:louishomeweb_1/data/style.dart';
import 'package:louishomeweb_1/screens/main_middle.dart';
import 'package:louishomeweb_1/screens/main_upper.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors[0],
        title: Text(
          '루 이 스 홈',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
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
