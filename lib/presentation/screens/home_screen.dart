import 'package:esep/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app/theme/colors/app_colors.dart';
import '../../app/widgets/bottom_navigation_bar_widget.dart';
import 'add_screen.dart';
import 'balans_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final HomeController homeScreenController =
      Get.put<HomeController>(HomeController(), permanent: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgraundColor,
      bottomNavigationBar:
          buildBottomNavigationMenu(context, homeScreenController),
      body: Obx(() => IndexedStack(
            index: homeScreenController.tabIndex.value,
            children: [
              homeScreenController.groups.length == 0
                  ? AddScreen()
                  : BalansScreen(),
              // Container(
              //   color: Colors.green,
              // ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.pink,
              ),
            ],
          )),
    );
  }
}
