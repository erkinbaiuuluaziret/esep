import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import '../../../widgets/name_osoo_container_widget.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  RxList<Widget> groups = <Widget>[NameOsOOContainerWidget()].obs;
  RxString nameOsOO = ''.obs;
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void increment() => count.value++;
}
