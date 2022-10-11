import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/app_colors.dart';

class TextStyles {
  static const TextStyle textStyle1 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static const TextStyle textStyle2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
  static const TextStyle textStyle3 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 25,
  );
  static const TextStyle textStyle4 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 30,
  );
  static const TextStyle textStyle5 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: AppColors.white,
  );
  static const TextStyle textStyle6 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.greyColor,
  );
  static TextStyle grey30028w400 = TextStyle(
    color: AppColors.grey300,
    fontSize: 28,
    wordSpacing: 3,
    letterSpacing: 1,
  );
  static const TextStyle white38_10w400 = TextStyle(
    fontSize: 10,
    color: AppColors.white38,
  );
  static const TextStyle white20w700 = TextStyle(
    color: AppColors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  );

  static TextStyle monstserratBlack22w700 = GoogleFonts.montserrat(
    color: AppColors.black,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle black20w500 = TextStyle(
    color: AppColors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  );
  static TextStyle monserratBlack18w400 = GoogleFonts.montserrat(
    color: AppColors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
  );
  static TextStyle monserratBlack25w500 = GoogleFonts.montserrat(
    fontSize: 25.0,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );
}

