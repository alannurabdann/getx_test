import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground_test/Screen/LoginPage.dart';
import 'package:playground_test/Screen/MainPage.dart';

import 'Controller/AuthController.dart';

void main() {

  AuthController authController = Get.put(AuthController(), permanent: true);

  runApp(GetMaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    initialRoute: '/login',
    getPages: [
      GetPage(name: '/login', page: () => LoginPage()),
      GetPage(name: '/home', page: () => MainPage()),
    ],
  ));
}

