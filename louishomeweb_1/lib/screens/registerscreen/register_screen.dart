import 'package:flutter/material.dart';
import 'package:louishomeweb_1/data/style.dart';
import 'package:get/get.dart';
import 'package:louishomeweb_1/utils/register_input_form.dart';
import 'package:louishomeweb_1/utils/sns_login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                  '회 원 가 입',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),
                registerSNS(),
                SizedBox(height: 20),
                userType(),
                SizedBox(height: 60),
                registerBaseInput(),
                SizedBox(height: 60),
                registerAddInput(),
                SizedBox(height: 60),
                acceptTerms(),
                SizedBox(height: 15),
                registerButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget userType() {
    return Container(
      width: 1200,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('회원구분'),
                Icon(
                  Icons.check,
                  color: Colors.red,
                )
              ],
            ),
          ),
          SizedBox(width: 50),
          Container(
            height: 80,
            width: 1,
            color: Colors.grey,
          ),
          Container(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.radio_button_checked,
                  color: Colors.blue,
                  size: 15,
                ),
                Text(' 개인회원'),
              ],
            ),
          ),
        ],
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
        SizedBox(height: 20),
        Column(
          children: [basicInputForm()],
        ),
      ],
    );
  }

  Widget basicInputForm() {
    return Form(
      child: Column(
        children: [
          inputForm('아이디'),
          inputForm('비밀번호'),
          inputForm('비밀번호 확인'),
          inputForm('이름'),
          inputAddressForm(),
          inputNumber('일반전화'),
          inputNumber('휴대전화'),
          checkSMS('SMS 수신여부'),
          inputForm('이메일'),
          checkSMS('이메일 수신여부'),
        ],
      ),
    );
  }

  Widget inputAddressForm() {
    return Container(
      width: 1200,
      height: 130,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.2),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 120,
              child: Row(
                children: [
                  Text('주소'),
                  Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 45,
          ),
          Container(
            width: 1,
            height: 130,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 30,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                    child: Center(child: Text('우편번호')),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 400,
                    height: 30,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '  기본주소',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 400,
                    height: 30,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '  나머지주소 (선택입력가능)',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }

  Widget inputNumber(String name) {
    return Container(
      width: 1200,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.2),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 120,
              child: Row(
                children: [
                  Text('$name'),
                  if (name == '휴대전화')
                    Icon(
                      Icons.check,
                      color: Colors.red,
                    ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 45,
          ),
          Container(
            width: 1,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 60,
            height: 30,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
            ),
          ),
          Text('   -   '),
          Container(
            width: 60,
            height: 30,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
            ),
          ),
          Text('   -   '),
          Container(
            width: 60,
            height: 30,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }

  Widget checkSMS(String name) {
    return Container(
      width: 1200,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.2),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 120,
              child: Row(
                children: [
                  Text('$name'),
                  Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 45,
          ),
          Container(
            width: 1,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.check_box),
                  SizedBox(width: 10),
                  Text('동의함'),
                ],
              ),
              SizedBox(height: 5),
              Text(
                '우프에서 제공하는 다양한 할인&혜택 소식을 놓치지 않으시려면 동의해주세요.',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(height: 5),
              Text(
                '수신 미동의 시 혜택 소식 및 할인 쿠폰이 지급되지 않을 수 있습니다.',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget registerAddInput() {
    return Column(
      children: [
        Text(
          '추가 정보 입력',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        inputBirth(),
        recID(),
        account(),
      ],
    );
  }

  Widget inputBirth() {
    return Container(
      width: 1200,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.2),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 120,
              child: Row(
                children: [
                  Text('생년월일'),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 45,
          ),
          Container(
            width: 1,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.21),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 60,
            height: 30,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
            ),
          ),
          Text('   년   '),
          Container(
            width: 30,
            height: 30,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
            ),
          ),
          Text('   월  '),
          Container(
            width: 30,
            height: 30,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.3, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
            ),
          ),
          Text('   일  '),
        ],
      ),
    );
  }

  Widget recID() {
    return Container(
      width: 1200,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.2),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 120,
              child: Text('추천인 아이디'),
            ),
          ),
          SizedBox(
            width: 45,
          ),
          Container(
            width: 1,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 210,
            height: 30,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }

  Widget account() {
    return Container(
      width: 1200,
      height: 130,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.2),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              width: 120,
              child: Row(
                children: [
                  Text('환불계좌 정보'),
                  Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 45,
          ),
          Container(
            width: 1,
            height: 130,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.2),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Text('예금주', style: TextStyle(fontSize: 12)),
                  SizedBox(width: 20),
                  Container(
                    width: 200,
                    height: 30,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('은행명', style: TextStyle(fontSize: 12)),
                  SizedBox(width: 20),
                  Container(
                    width: 200,
                    height: 30,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('예금주', style: TextStyle(fontSize: 12)),
                  SizedBox(width: 20),
                  Container(
                    width: 200,
                    height: 30,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }

  Widget acceptTerms() {
    return Column(
      children: [
        Icon(
          Icons.check_box,
        ),
        SizedBox(height: 60),
        Text(
          '이용약관 동의',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.check_box, size: 13),
                    SizedBox(width: 5),
                    Text('이용약관 동의', style: TextStyle(fontSize: 13)),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  width: 575,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.2,
                      color: Colors.grey,
                    ),
                  ),
                  child: Center(child: Text('이용 약관 내용')),
                ),
              ],
            ),
            SizedBox(width: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.check_box, size: 13),
                    SizedBox(width: 5),
                    Text('개인정보 수집 및 이용 동의', style: TextStyle(fontSize: 13)),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  width: 575,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.2,
                      color: Colors.grey,
                    ),
                  ),
                  child: Center(child: Text('이용 약관 내용')),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 15),
        Divider(),
      ],
    );
  }

  Widget registerButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.done, size: 14, color: Colors.green),
              SizedBox(width: 3),
              Text('회원가입'),
            ],
          ),
        ),
        SizedBox(width: 5),
        InkWell(
            child: Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.close, size: 14, color: Colors.green),
                  SizedBox(width: 3),
                  Text('취소'),
                ],
              ),
            ),
            onTap: () {
              Get.toNamed('/');
            }),
      ],
    );
  }
}
