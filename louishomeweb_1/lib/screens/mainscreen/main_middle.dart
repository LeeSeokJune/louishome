import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishomeweb_1/data/style.dart';

class mainMiddleScreen extends StatelessWidget {
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
        newItem(),
        SizedBox(height: 60),
        eventBox(),
        SizedBox(height: 60),
        bigBox(),
        SizedBox(height: 60),
        reviewList(),
      ],
    );
  }

  Widget newItem() {
    return Column(
      children: [
        Text(
          '새로운 상품을 만나요',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 30),
        ConstrainedBox(
          child: Swiper(
            outer: false,
            control: SwiperControl(),
            itemBuilder: (c, i) {
              return Wrap(
                runSpacing: 6.0,
                children: [0, 1, 2, 3].map((i) {
                  return InkWell(
                      child: SizedBox(
                        width: 300,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(
                              child: Container(
                                color: colors[1],
                              ),
                              height: 250,
                              width: 250,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6.0),
                              child: Text("$i"),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Get.toNamed('/item');
                      });
                }).toList(),
              );
            },
            pagination: SwiperPagination(margin: EdgeInsets.all(5.0)),
            itemCount: 4,
          ),
          constraints: BoxConstraints.loose(
            Size(1200, 300.0),
          ),
        ),
      ],
    );
  }

  Widget eventBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 500,
          height: 250,
          color: Colors.grey,
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 550,
          height: 250,
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget bigBox() {
    return Container(
      width: 1100,
      height: 300,
      color: colors[1],
    );
  }

  Widget reviewList() {
    return Column(
      children: [
        Text(
          '실제 리뷰를 보고 구매해보세요',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 60),
        Container(
          width: 1200,
          height: 800,
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              childAspectRatio: 1.5 / 2.5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => Container(
              decoration: line,
              child: Center(child: Text('리뷰')),
            ),
          ),
        ),
      ],
    );
  }
}
