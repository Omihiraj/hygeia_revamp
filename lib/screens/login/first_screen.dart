import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hygeia_revamp/utils/constants/app_color.dart';
import 'package:hygeia_revamp/utils/widgets/Login/login_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            AppColor.secondaryColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/name_logo.png",
                    width: 200.r,
                  ),
                  20.verticalSpace,
                  SizedBox(
                      width: 200.r,
                      child: const Text(
                        "Helping moms raise healthy babies",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ))
                ],
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const LoginButton(
                  btnText: "SIGN UP",
                  isElevation: false,
                ),
                const LoginButton(
                  btnText: "LOGIN",
                  isColored: true,
                  isElevation: false,
                ),
                20.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
