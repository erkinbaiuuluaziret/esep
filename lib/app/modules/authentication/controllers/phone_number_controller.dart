import 'dart:math';

import 'package:esep/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PhoneNumberController extends GetxController {
  // PhoneNumberController(
  //   this.mAuth,
  // );

  FirebaseAuth mAuth = FirebaseAuth.instance;

  var statusScreen = 'Welcome'.obs;
  var codeSent = 'no'.obs;
  String verificationID = '1';
  // String get statusResult => statusScreen.value;
  // String get codeSentResult => codeSent.value;
  // String get veriResult => verificationId;

  signInWithNumber(
    String phone,
    // required FirebaseAuth mAuth,
  ) async {
    await mAuth.verifyPhoneNumber(
      timeout: const Duration(seconds: 30),
      // Where you pass your phone Number
      phoneNumber: phone,
      // This Trigger is your number verification is complete
      verificationCompleted: (AuthCredential authCredential) {},
      // This trigger if your number verification fails
      verificationFailed: (authExeptions) {
        Get.snackbar('Erroe', 'error veriying your full number');
      },
      // This trigger if Firebase sends you a code
      codeSent: (String id, [int? responseToken]) {
        this.verificationID = id;
        statusScreen.value = 'succesfully logged';
        //  verificationId = verificationID;
      },
      //After new code is generated
      // ignore: null_check_always_fails
      codeAutoRetrievalTimeout: (id) {
        this.verificationID = id;
      },

      //After some seconds resends new code
      // timeout:
    );
  }

  verifyOtp(String otp) async {
    var credential = await mAuth.signInWithCredential(
      PhoneAuthProvider.credential(
        verificationId: this.verificationID,
        smsCode: otp,
      ),
    );
    if (credential.user != null) {
      Get.to(HomeView());
    }
    ;
  }

  // myCredentional(String verID, String userInput) {
  //   AuthCredential authCredential = PhoneAuthProvider.credential(
  //     verificationId: verID,
  //     smsCode: userInput,
  //   );
  //   mAuth.signInWithCredential(authCredential).then((UserCredential) {
  //     Get.to(HomeView());
  //     // If successful move to the home page
  //   }).catchError((e) {
  //     print('Error Message ${e}');
  //   });
  // }

  // void myCredentionals({required String verID, required String userInput}) {}
}
