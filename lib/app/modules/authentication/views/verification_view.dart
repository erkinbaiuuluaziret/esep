import 'package:esep/app/buttons/main_custom_button.dart';
import 'package:esep/app/constans/app_text/app_text.dart';
import 'package:esep/app/widgets/rounded_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

class VerificationView extends GetView {
  const VerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const RoundedTextField(
                  hintText: AppText.phoneNumber,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: MainCustomButton(
                    text: AppText.next,
                    onPressed: () {},
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
