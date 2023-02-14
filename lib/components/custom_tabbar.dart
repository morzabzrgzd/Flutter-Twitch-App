import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';
import '../controllers/home_ctrl.dart';

class CustomTabbar extends StatelessWidget {
  const CustomTabbar({
    super.key,
    required this.homeCtrl,
  });

  final HomeController homeCtrl;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          homeCtrl.tabBarTitle.length,
          (index) => Obx(
            () => GestureDetector(
              onTap: () {
                homeCtrl.changeTabbar(index);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: homeCtrl.selcetTabbar.value == index
                      ? AppColor.primeryColor
                      : AppColor.unSelectedColor,
                ),
                child: Text(
                  homeCtrl.tabBarTitle[index],
                  style: GoogleFonts.roboto(
                    color: AppColor.textColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
