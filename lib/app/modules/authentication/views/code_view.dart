import 'package:esep/app/buttons/main_custom_button.dart';
import 'package:esep/app/constans/app_text/app_text.dart';
import 'package:esep/app/modules/authentication/controllers/phone_number_controller.dart';
import 'package:esep/app/theme/colors/app_colors.dart';
import 'package:esep/app/theme/textStyle/text_stayle.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class CodeView extends GetView {
  final otp = TextEditingController();
  PhoneNumberController controller = Get.find();
  // final PhoneNumberController pcontroller = Get.put(PhoneNumberController());
  // TextEditingController? _codeController;
  // final String otpString = '1234';
  CodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SvgPicture.asset('assets/icons/logo.svg'),
                  Text(
                    AppText.codeConfirmation,
                    style: TextStyles.monstserratBlack22w700,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Column(
                      children: [
                        Text(
                          AppText.yourNumberWasSent,
                          style: TextStyles.monserratBlack18w400,
                        ),
                        Text(
                          AppText.smsWithPersonalCode,
                          style: TextStyles.monserratBlack18w400,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 75.0,
                    ),
                    child: Pinput(
                      controller: otp,
                      keyboardType: TextInputType.number,
                      length: 6,
                      focusedPinTheme: PinTheme(
                        width: 55.0,
                        height: 55.0,
                        textStyle: TextStyles.monserratBlack25w500,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(
                            color: AppColors.mainColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      defaultPinTheme: PinTheme(
                        height: 55.0,
                        width: 55.0,
                        textStyle: TextStyles.monserratBlack25w500,
                        decoration: BoxDecoration(
                          color: AppColors.grey300,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      errorPinTheme: PinTheme(
                        width: 55.0,
                        height: 55.0,
                        textStyle: TextStyles.monserratBlack25w500,
                        decoration: BoxDecoration(
                          color: AppColors.grey300,
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      // validator: (value) {
                      //   if (value == otpString) {}
                      //   return 'код туу эмес';
                      // },
                    ),
                  ),
                  MainCustomButton(
                    text: AppText.continuu,
                    onPressed: () {
                      controller.verifyOtp(otp.text);
                      // String userInput = _codeController!.text;
                      // pcontroller.myCredentionals(
                      //     verID: pcontroller.veriResult, userInput: userInput);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
