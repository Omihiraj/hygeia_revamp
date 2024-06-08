import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_color.dart';

class LoginButton extends StatefulWidget {
  final String btnText;
  final bool isColored;
  final bool isElevation;
  const LoginButton(
      {super.key,
      required this.btnText,
      this.isColored = false,
      this.isElevation = false});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Container(
        width: ScreenUtil().screenWidth,
        height: 50,
        decoration: BoxDecoration(
            color: widget.isColored ? Colors.white : null,
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(color: Colors.white)),
        child: Center(
          child: Text(
            widget.btnText,
            style: TextStyle(
                color:
                    widget.isColored ? AppColor.secondaryColor : Colors.white,
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}
