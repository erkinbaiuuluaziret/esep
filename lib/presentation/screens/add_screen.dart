import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/modules/home/controllers/home_controller.dart';
import '../../app/theme/colors/app_colors.dart';
import '../../app/theme/textStyle/text_stayle.dart';
import '../../app/widgets/name_osoo_container_widget.dart';
import 'balans_screen.dart';

class AddScreen extends StatelessWidget {
  AddScreen({Key? key}) : super(key: key);

  final HomeController homeScreenController =
      Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 516,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: AppColors.containerColor),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 33.0, vertical: 35.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/user_logo.png',
                        ),
                        Text('+996 777 000 111', style: TextStyles.textStyle1)
                      ],
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: AppColors.mainColor, width: 2)),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'ФИО собственника бизнеса',
                              hintStyle: TextStyles.textStyle6,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 31.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: AppColors.mainColor, width: 2)),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'Название ИП/ОсОО',
                              hintStyle: TextStyles.textStyle6,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          homeScreenController.groups
                              .add(const NameOsOOContainerWidget());
                          Get.to(BalansScreen());
                        },
                        child: Container(
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: AppColors.mainColor),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            child: Center(
                              child: Text(
                                'Добавить',
                                style: TextStyles.textStyle5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      )),
    );
  }
}
