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

  var bottomText = [
    '구독',
    '오프라인',
    '회원',
    '이벤트',
    '리뷰',
  ];
  var backColors = [
    colors[0],
    colors[0],
    colors[0],
    colors[0],
    colors[0],
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        upper(),
        SizedBox(height: 10),
        upperBottom(),
        SizedBox(height: 100),
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
            color: Colors.grey,
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
                    color: Colors.grey,
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
