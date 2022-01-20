import 'package:flutter/material.dart';

Widget registerSNS() {
  return Column(
    children: [
      snsButton('네이버 로그인', Color(0xff2db400), Colors.white),
      SizedBox(height: 15),
      snsButton('카카오톡 로그인', Colors.yellow, Colors.black),
      SizedBox(height: 15),
      snsButton('페이스북 로그인', Colors.blue, Colors.white),
      SizedBox(height: 15),
      snsButton('Apple로 로그인', Colors.black, Colors.white),
    ],
  );
}

Widget snsButton(String name, Color color, Color textColor) {
  return Container(
    width: 350,
    height: 50,
    color: color,
    child: Center(
      child: Text(
        name,
        style: TextStyle(color: textColor),
      ),
    ),
  );
}
