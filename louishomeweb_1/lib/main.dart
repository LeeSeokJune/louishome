import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishomeweb_1/data/style.dart';
import 'package:louishomeweb_1/screens/itemscreen/item_screen.dart';
import 'package:louishomeweb_1/screens/loginscreen/login_screen.dart';
import 'package:louishomeweb_1/screens/mainscreen/main_screen.dart';
import 'package:louishomeweb_1/screens/registerscreen/register_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: font,
        primaryColor: colors[0],
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => MainScreen(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginScreen(),
        ),
        GetPage(
          name: '/register',
          page: () => RegisterScreen(),
        ),
        GetPage(
          name: '/item',
          page: () => ItemScreen(),
        ),
      ],
      home: MainScreen(),
    );
  }
}
