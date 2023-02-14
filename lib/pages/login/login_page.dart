import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitch_app/constants/app_color.dart';
import 'package:twitch_app/controllers/login_ctrl.dart';
import 'package:twitch_app/pages/home/home_page.dart';

import '../../components/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var loginCtrl = Get.put(LoginController());
    return Scaffold(
      backgroundColor: AppColor.primeryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icons/twitch_logo.png',
                width: 60,
              ),
              const SizedBox(height: 15),
              Text(
                'Welcome',
                style: GoogleFonts.roboto(
                  color: AppColor.textColor,
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              const CustomTExtField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                suffixIcon: SizedBox(),
                hintText: 'Enter your email',
                title: 'Email',
              ),
              const SizedBox(height: 16),
              Obx(
                () => CustomTExtField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: loginCtrl.obscureText.value,
                  suffixIcon: IconButton(
                    onPressed: () {
                      loginCtrl.showPassword();
                    },
                    splashRadius: 20,
                    icon: Icon(
                      loginCtrl.obscureText.value == true
                          ? CupertinoIcons.eye_slash
                          : CupertinoIcons.eye,
                      color: AppColor.primeryColor,
                    ),
                  ),
                  hintText: 'Enter your password',
                  title: 'Password',
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: loginCtrl.chekboxValue.value,
                          onChanged: (value) {
                            loginCtrl.checkBox(value);
                          },
                          // activeColor: Colors.white,
                          checkColor: AppColor.primeryColor,
                          fillColor: MaterialStateProperty.all(Colors.white),
                          // hoverColor: Colors.amber,
                          // tristate: true,
                          side: const BorderSide(
                            color: Colors.white,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      Text(
                        'Remember me',
                        style: GoogleFonts.roboto(
                          color: AppColor.textColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget password',
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        color: AppColor.textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  onPressed: () {
                    Get.to(() => const HomePage());
                  },
                  child: Text(
                    'Login',
                    style: GoogleFonts.roboto(
                      color: AppColor.primeryColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t Have An Account?',
                    style: GoogleFonts.roboto(
                      color: AppColor.textColor,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 5),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.roboto(
                          color: AppColor.textColor,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
