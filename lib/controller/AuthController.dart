import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playground_test/Screen/MainPage.dart';

class AuthController extends GetxController{
  var textPasswordController = TextEditingController().obs;
  var textEmailController = TextEditingController().obs;
  var flagVisiblePassword = false.obs;

  void doLoginSequence() {

    if(emailValidator(textEmailController.value.text).toString() == 'OK'){
      if (textEmailController.value.text == "123" &&
          textPasswordController.value.text == "123") {
        Get.off(MainPage());
      } else {
        Get.snackbar(
          "Error",
          "Kombinasi gagal",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }
  }

  String emailValidator(String email){
      if (email.isEmpty) return 'Enter Email!';

      bool isValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
      if (!isValid) return 'Enter valid Email!';

      return 'OK';
  }

  void showVisiblePassword(){
    flagVisiblePassword.toggle();
  }
}