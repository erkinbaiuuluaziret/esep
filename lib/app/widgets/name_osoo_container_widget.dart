import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/colors/app_colors.dart';
import '../theme/textStyle/text_stayle.dart';

class NameOsOOContainerWidget extends StatelessWidget {
  const NameOsOOContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.mainColor),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 14),
            child: Center(
              child: Text(
                'ОсОО Олимп груп',
                style: TextStyles.white20w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
