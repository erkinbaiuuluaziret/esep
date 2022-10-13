import 'package:esep/app/buttons/main_custom_button.dart';
import 'package:esep/app/constans/app_text/app_text.dart';
import 'package:esep/app/modules/authentication/controllers/phone_number_controller.dart';
import 'package:esep/app/modules/authentication/views/code_view.dart';
import 'package:esep/app/theme/textStyle/text_stayle.dart';
import 'package:esep/app/widgets/rounded_textfiled.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

class VerificationView extends GetView {
  // final PhoneNumberController pcontroller = Get.put(PhoneNumberController());
  // late TextEditingController codeController;
  // late TextEditingController numController;
  // late String verificationId;
  //  VerificationView(this.numController, {Key? key}) : super(key: key);
  final phone = TextEditingController();
  PhoneNumberController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    // codeController = TextEditingController();
    // numController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/icons/logo.svg'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 65.0),
                  child: Text(
                    AppText.signUpWithPhoneNumber,
                    style: TextStyles.black20w500,
                  ),
                ),
                RoundedTextField(
                  controller: phone,
                  hintText: AppText.phoneNumber,
                ),
                // Obx(() {
                //   return pcontroller.codeSentResult == 'yes'
                //       ? Column()
                //       : Text(
                //           'Waiting to verify your phone number',
                //           style: TextStyle(
                //             color: Colors.black,
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         );
                // }),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: MainCustomButton(
                    text: AppText.next,
                    onPressed: () async {
                      // Get.toNamed('/code');
                      // await pcontroller.signInWithNumber(
                      //   my_phone_number: numController.text,
                      // );
                      controller.signInWithNumber(phone.text);
                      Get.to(CodeView());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
