import 'package:esep/app/buttons/authorize_button.dart';
import 'package:esep/app/buttons/main_custom_button.dart';
import 'package:esep/app/constans/app_text/app_text.dart';
import 'package:esep/app/theme/colors/app_colors.dart';
import 'package:esep/app/theme/textStyle/text_stayle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

class AuthorizeView extends GetView {
  const AuthorizeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.091,
                  // top: 80.0,
                ),
                child: SvgPicture.asset('assets/icons/logo.svg'),
              ),
              Padding(
                padding: EdgeInsets.only(
                  // left: 27.0,
                  left: size.width * 0.070,
                ),
                child: SvgPicture.asset(
                  'assets/icons/ESEP.svg',
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      // left: 27.0,
                      left: size.width * 0.07,
                      // top: 29.0,
                      top: size.height * 0.04,
                      // bottom: 29.0,
                      bottom: size.height * 0.04,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppText.allYour,
                          style: TextStyles.grey30028w400,
                        ),
                        Text(
                          AppText.financeInside,
                          style: TextStyles.grey30028w400,
                        ),
                        Text(
                          AppText.modern,
                          style: TextStyles.grey30028w400,
                        ),
                        Text(
                          AppText.application,
                          style: TextStyles.grey30028w400,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            // top: 80.0,
                            top: size.height * 0.093,
                            // bottom: 220.0
                            bottom: size.height * 0.26,
                          ),
                          child: AuthorizeButton(
                            color: AppColors.white,
                            onPressed: () {
                              Get.toNamed('/verification');
                            },
                          ),
                        ),
                        const Text(
                          AppText.developedByUniDevs,
                          style: TextStyles.white38_10w400,
                        ),
                        const Divider(
                          color: AppColors.white38,
                          thickness: 3,
                          height: 15,
                          indent: 150,
                          endIndent: 150,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
