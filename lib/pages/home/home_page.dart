import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitch_app/constants/app_color.dart';
import 'package:twitch_app/controllers/home_ctrl.dart';

import '../../components/post_widget.dart';
import '../../components/story_model.dart';
import '../../components/custom_tabbar.dart';
import '../../components/top_profile_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var homeCtrl = Get.put(HomeController());
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: SafeArea(
          child: Column(
            children: [
              const TopProfileWidget(),
              const SizedBox(height: 25),
              StoryModel(homeCtrl: homeCtrl),
              const SizedBox(height: 25),
              CustomTabbar(homeCtrl: homeCtrl),
              const SizedBox(height: 15),
              PostWidget(homeCtrl: homeCtrl),
            ],
          ),
        ),
      ),
    );
  }
}
