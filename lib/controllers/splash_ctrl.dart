import 'package:get/get.dart';
import 'package:twitch_app/pages/login/login_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    handleSplash();
    super.onInit();
  }

  handleSplash() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => const LoginPage());
    });
  }
}
