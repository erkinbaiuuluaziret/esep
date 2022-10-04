import 'package:esep/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/theme/colors/app_colors.dart';
import '../../app/theme/textStyle/text_stayle.dart';
import '../../app/widgets/balans_container_widget.dart';

class BalansScreen extends StatelessWidget {
  BalansScreen({Key? key}) : super(key: key);
  final HomeController homeScreenController =
      Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: AppColors.containerColor),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 17.0, vertical: 32.0),
              child: Column(children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/user_logo.png',
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Кыпчаков Бактыяр',
                                style: TextStyles.textStyle1),
                            Text('Бекташович', style: TextStyles.textStyle1)
                          ],
                        ))
                  ],
                ),
                SizedBox(height: 20),
              ]),
            ),
          ),
          BalansContainerWidget(title: 'Общий баланс', balans: '29 000 сом'),
          SizedBox(height: 13),
          Obx(() =>
              ListView(shrinkWrap: true, children: homeScreenController.groups))
        ],
      )),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Get.to(AddScreen());
      //   },
      //   backgroundColor: AppColors.mainColor,
      //   child: Icon(Icons.add, size: 40.0),
      // ),
    );
  }
}
