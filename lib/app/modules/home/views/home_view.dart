import 'package:esep/app/modules/authentication/controllers/phone_number_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView {
  PhoneNumberController controller = Get.find();
  var auth = FirebaseAuth.instance;
  // const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          auth.signOut();
          if (auth.currentUser == null) {
            Get.toNamed('/verification');
          }
        },
      ),
    );
  }
}
