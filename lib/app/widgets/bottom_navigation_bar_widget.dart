import 'package:esep/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/colors/app_colors.dart';

buildBottomNavigationMenu(context, landingPageController) {
  final HomeController homeScreenController =
      Get.put<HomeController>(HomeController(), permanent: false);
  return Obx(() => Container(
        decoration: const BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
        ),
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: BottomNavigationBar(
            elevation: 0.0,
            // fixedColor: Colors.green,
            onTap: homeScreenController.changeTabIndex,
            currentIndex: homeScreenController.tabIndex.value,
            backgroundColor: AppColors.mainColor,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Color.fromARGB(255, 206, 185, 185),
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  child: const Icon(
                    Icons.home_outlined,
                    color: AppColors.white,
                    size: 35.0,
                  ),
                ),
                label: '',
                backgroundColor: AppColors.mainColor,
              ),
              const BottomNavigationBarItem(
                icon: SizedBox(
                  child: Icon(
                    Icons.search,
                    color: AppColors.white,
                    size: 35.0,
                  ),
                ),
                label: '',
                backgroundColor: AppColors.mainColor,
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  child: Image.asset(


                    'assets/images/ring_logo.png',

                    color: AppColors.white,
                    // size: 35.0,
                  ),
                ),
                label: '',
                backgroundColor: AppColors.mainColor,
              ),
              const BottomNavigationBarItem(
                icon: SizedBox(
                  child: Icon(
                    Icons.person_outlined,
                    color: AppColors.white,
                    size: 35.0,
                  ),
                ),
                label: '',
                backgroundColor: AppColors.mainColor,
              ),
            ],
          ),
        ),
      ));
}
