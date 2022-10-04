// ignore_for_file: unnecessary_null_comparison

import 'package:esep/app/constans/app_text/app_text.dart';
import 'package:esep/app/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AuthorizeButton extends StatelessWidget {
  Color color;
  VoidCallback onPressed;

  AuthorizeButton({
    required this.color,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        // backgroundColor: color == null ? AppColors.green : AppColors.mainColor,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        minimumSize: Size(
          size.width * 0.85,
          52.0,
        ),
      ),
      child: const Text(
        AppText.authorization,
        style: TextStyle(
          fontSize: 20.0,
          color: AppColors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
