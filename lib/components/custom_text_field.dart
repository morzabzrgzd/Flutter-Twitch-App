import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';

class CustomTExtField extends StatelessWidget {
  const CustomTExtField({
    super.key,
    required this.title,
    required this.hintText,
    required this.suffixIcon,
    required this.obscureText,
    required this.keyboardType,
  });

  final String title;
  final String hintText;
  final Widget suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            color: AppColor.textColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          keyboardType: keyboardType,
          cursorHeight: 21,
          obscureText: obscureText,
          cursorColor: AppColor.primeryColor,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            isCollapsed: true,
            fillColor: Colors.white,
            filled: true,
            hintStyle: const TextStyle(color: Colors.grey),
            hintText: hintText,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        )
      ],
    );
  }
}
