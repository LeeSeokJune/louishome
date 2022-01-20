import 'package:flutter/material.dart';
import 'package:louishomeweb_1/data/style.dart';
import 'package:get/get.dart';
import 'package:louishomeweb_1/utils/sns_login.dart';

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
                underbarInput('아이디'),
                underbarInput('비밀번호'),
                SizedBox(height: 10),
                checkForm(),
                SizedBox(height: 20),
                loginButton(),
                SizedBox(height: 30),
                userButtons(),
                SizedBox(height: 30),
                registerSNS(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget underbarInput(String name) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 20),
            Container(
              width: 80,
              child: Text(
                '$name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 420,
              height: 30,
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 500,
          child: Divider(thickness: 0.5, color: Colors.black),
        ),
      ],
    );
  }

  Widget checkForm() {
    return Container(
      width: 500,
      child: Row(
        children: [
          SizedBox(width: 10),
          Icon(
            Icons.check_box_outline_blank,
            size: 15,
            color: Colors.grey,
          ),
          Text('아이디 저장', style: TextStyle(fontSize: 13)),
          SizedBox(width: 20),
          Icon(
            Icons.lock,
            size: 15,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '보안 로그인',
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget loginButton() {
    return InkWell(
        child: Container(
          width: 500,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
          ),
          child: Center(
            child: Text(
              '로그인',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ),
        onTap: () {
          Get.toNamed('/');
        });
  }

  Widget userButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        userButton(Colors.grey, '아이디 찾기'),
        SizedBox(width: 10),
        userButton(Colors.grey, '비밀번호 찾기'),
        SizedBox(width: 10),
        userButton(Colors.grey, '비회원 주문조회'),
        SizedBox(width: 10),
        userButton(Colors.green, '간편한 회원가입'),
      ],
    );
  }

  Widget userButton(Color color, String name) {
    return Container(
      width: 118,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: color),
      ),
      child: Center(
          child: Text(
        '$name',
        style: TextStyle(color: color, fontSize: 14),
      )),
    );
  }
}
