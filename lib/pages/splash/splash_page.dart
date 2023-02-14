import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitch_app/constants/app_color.dart';
import 'package:twitch_app/controllers/splash_ctrl.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primeryColor,
      body: GetBuilder(
        init: SplashController(),
        builder: (controller) {
          return Center(
            child: Image.asset(
              'assets/icons/twitch_logo.png',
              width: 80,
            ),
          );
        },
      ),
    );
  }
}
