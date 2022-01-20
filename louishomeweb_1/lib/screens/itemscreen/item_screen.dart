import 'package:flutter/material.dart';
import 'package:louishomeweb_1/data/style.dart';
import 'package:get/get.dart';

class ItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainBar,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 1200,
            height: context.height * 5,
            child: Column(
              children: [
                upper(),
                Divider(),
                SizedBox(height: 50),
                itemUpper(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget itemUpper() {
    return Row(
      children: [
        Container(
          width: 550,
          height: 550,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Center(child: Text('사진')),
        ),
      ],
    );
  }
}
