import 'package:flutter/material.dart';
import 'package:louishomeweb_1/data/style.dart';
import 'package:get/get.dart';
import 'package:louishomeweb_1/utils/register_input_form.dart';

class LoginScreen extends StatelessWidget {
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
                upper(),
                Divider(),
                SizedBox(height: 60),
                Text(
                  '로 그 인',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),
                registerSNS(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

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

  Widget registerBaseInput() {
    return Column(
      children: [
        Text(
          '기본 정보 입력',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        Column(
          children: [basicInputForm()],
        ),
      ],
    );
  }

  Widget basicInputForm() {
    return Row(
      children: [
        inputForm('아이디'),
      ],
    );
  }
}
