import 'package:get/get.dart';
import 'package:playground_test/controller/AuthController.dart';
import 'package:test/test.dart';

void main() {

  var controller =  Get.put(AuthController());

  test('Empty Email Test', () {
    String result = controller.emailValidator('');
    expect(result, 'Enter Email!');
  });

  test('Invalid Email Test', () {
    String result = controller.emailValidator('alan');
    expect(result, 'Enter valid Email!');
  });
}