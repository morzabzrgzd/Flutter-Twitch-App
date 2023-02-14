import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';

class TopProfileWidget extends StatelessWidget {
  const TopProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColor.primeryColor,
            radius: 25,
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.grey.shade900,
              backgroundImage: const AssetImage('assets/images/face7.jpg'),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '👋 Hola,',
            style: GoogleFonts.roboto(
              color: AppColor.textColor,
              fontSize: 24,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            ' ThePesante!',
            style: GoogleFonts.roboto(
              color: AppColor.textColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
