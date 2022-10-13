// ignore_for_file: unnecessary_null_comparison

import 'package:esep/app/constans/app_text/app_text.dart';
import 'package:esep/app/theme/colors/app_colors.dart';
import 'package:esep/app/theme/textStyle/text_stayle.dart';
import 'package:flutter/material.dart';

class MainCustomButton extends StatelessWidget {
  String text;

  VoidCallback onPressed;

  MainCustomButton({
    required this.text,
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
      primary: AppColors.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        minimumSize: Size(
          size.width * 0.85,
          52.0,
        ),
      ),
      child: Text(text, style: TextStyles.white20w700),
    );
  }
}
