import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool obscureText = true.obs;

  showPassword() {
    obscureText.value = !obscureText.value;
  }

  RxBool chekboxValue = false.obs;

  checkBox(value) {
    chekboxValue.value = value;
  }
}
