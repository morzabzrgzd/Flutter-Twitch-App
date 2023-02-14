import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';
import '../controllers/home_ctrl.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.homeCtrl,
  });

  final HomeController homeCtrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: List.generate(
          homeCtrl.postModel.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.primeryColor.withOpacity(.3),
                            offset: const Offset(5, 5),
                            blurRadius: 20,
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(homeCtrl.postModel[index]),
                        ),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColor.primeryColor,
                          width: 3,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.liveColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          'LIVE',
                          style: GoogleFonts.roboto(
                            color: AppColor.textColor,
                            fontSize: 14,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      bottom: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.black.withOpacity(.5)),
                        child: Text(
                          '10.095 spettatori',
                          style: GoogleFonts.roboto(
                            color: AppColor.textColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade900,
                      backgroundImage: const AssetImage(
                        'assets/images/face6.jpg',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Il Pub Nerd della moltiplicazione dei contatti',
                            maxLines: 2,
                            style: GoogleFonts.roboto(
                              color: AppColor.textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'DarioMocciaTwitch',
                            maxLines: 2,
                            style: GoogleFonts.roboto(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
