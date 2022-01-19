import 'package:flutter/material.dart';
import 'package:get/get.dart';

var font = 'NanumBarunGothic';
var colors = [Color.fromRGBO(0, 36, 79, 1), Colors.grey];
var line = BoxDecoration(
  border: Border.all(
    width: 2,
    color: colors[0],
  ),
  borderRadius: BorderRadius.circular(2),
);

var infoStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);
var infosmallStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

var upperRightData = [
  '로그인',
  '회원가입',
  '장바구니',
  '주문내역',
  '게시판',
];
var upperRightRoute = [
  '/login',
  '/register',
  '/shopping',
  '/shoppingList',
  '/community'
];
var mainBar = AppBar(
  backgroundColor: colors[0],
  title: Text(
    '루 이 스 홈',
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
  ),
  centerTitle: true,
);
Widget upper() {
  return Column(
    children: [
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          upperLeft(),
          upperRight(),
        ],
      ),
      SizedBox(height: 10),
      Divider(),
      SizedBox(height: 30),
      InkWell(
        child: Image.asset(
          'images/루이스홈 로고BLUE.png',
          height: 100,
        ),
        onTap: () {
          Get.toNamed('/');
        },
      ),
      SizedBox(height: 30),
      Divider(
        thickness: 2.5,
        color: Colors.grey,
      ),
      upperMid(),
    ],
  );
}

Widget upperLeft() {
  return Row(
    children: [
      Image.asset(
        'icons/facebook-app-symbol.png',
        height: 15,
      ),
      SizedBox(width: 10),
      Image.asset(
        'icons/instagram.png',
        height: 15,
      ),
      SizedBox(
        width: 10,
      ),
      Icon(
        Icons.search,
        size: 15,
      ),
    ],
  );
}

Widget upperRight() {
  return Row(
    children: [
      for (var i = 0; i < upperRightData.length; i++)
        InkWell(
          child: Container(
            width: 60,
            height: 18,
            child: Center(
              child: Text(
                upperRightData[i],
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
          ),
          onTap: () {
            Get.toNamed(upperRightRoute[i]);
          },
        ),
    ],
  );
}

Widget upperMid() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      upperMidLeft(),
      upperMidRight(),
    ],
  );
}

Widget upperMidLeft() {
  return Row(
    children: [
      SizedBox(width: 10),
      Container(
        width: 100,
        child: Row(
          children: [
            Icon(Icons.menu, size: 25),
            SizedBox(
              width: 5,
            ),
            Text(
              '카테고리',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
      VerticalDivider(
        width: 10,
        thickness: 10,
        color: Colors.black,
      ),
      Container(
        width: 1,
        height: 30,
        color: Colors.grey,
      ),
      Container(
        width: 100,
        height: 40,
        child: Center(
          child: Text(
            '브랜드샵',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
      Container(
        width: 1,
        height: 30,
        color: Colors.grey,
      ),
    ],
  );
}

var midRightData = [
  '구독',
  '사료',
  '간식',
  '위생용품',
  '장난감',
  '신상품',
  '옷',
];
Widget upperMidRight() {
  return Row(
    children: [
      for (var i = 0; i < midRightData.length; i++)
        Text(
          midRightData[i] + '      ',
          style: TextStyle(
            fontSize: 15,
          ),
        )
    ],
  );
}
