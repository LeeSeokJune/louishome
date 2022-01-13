import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:louishomeweb_1/data/style.dart';

class mainUpper extends StatelessWidget {
  var upperRightData = [
    '로그인',
    '회원가입',
    '장바구니',
    '주문내역',
    '게시판',
  ];
  var midRightData = [
    '구독',
    '사료',
    '간식',
    '위생용품',
    '장난감',
    '신상품',
    '옷',
  ];
  var bottomText = [
    '구독',
    '오프라인',
    '회원',
    '이벤트',
    '리뷰',
  ];
  var backColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
  ];
  @override
  Widget build(BuildContext context) {
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
        Image.asset(
          'images/루이스홈 로고BLUE.png',
          height: 100,
        ),
        SizedBox(height: 30),
        Divider(
          thickness: 2.5,
          color: Colors.grey,
        ),
        upperMid(),
        SizedBox(height: 10),
        upperBottom(),
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
          Text(
            upperRightData[i] + '        ',
            style: TextStyle(
              fontSize: 13,
            ),
          )
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

  Widget upperBottom() {
    return Column(
      children: [
        swiperImages(),
        SizedBox(height: 50),
        circleImages(),
        bottomBox(),
      ],
    );
  }

  Widget swiperImages() {
    return Container(
      width: 1200,
      height: 500,
      child: Swiper(
        itemCount: 5,
        pagination: SwiperPagination(),
        control: SwiperControl(),
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: backColors[index],
          );
        },
      ),
    );
  }

  Widget circleImages() {
    return Container(
      width: 700,
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bottomText.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: backColors[index],
                  ),
                ),
                SizedBox(height: 5),
                Text(bottomText[index]),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget bottomBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 500,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: 500,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
