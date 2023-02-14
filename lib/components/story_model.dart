import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';
import '../controllers/home_ctrl.dart';

class StoryModel extends StatelessWidget {
  const StoryModel({
    super.key,
    required this.homeCtrl,
  });

  final HomeController homeCtrl;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
          homeCtrl.storyModel.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CircleAvatar(
                  backgroundColor:
                      index == 0 ? AppColor.liveColor : Colors.transparent,
                  radius: 33,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.shade900,
                    backgroundImage: AssetImage(
                      homeCtrl.storyModel[index],
                    ),
                  ),
                ),
                index == 0
                    ? Positioned(
                        bottom: -3,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColor.liveColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            'LIVE',
                            style: GoogleFonts.roboto(
                              color: AppColor.textColor,
                              fontSize: 10,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
