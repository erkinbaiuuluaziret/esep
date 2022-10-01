import 'package:esep/app/constans/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

class AuthorizeView extends GetView {
  const AuthorizeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AuthorizeView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          SvgPicture.asset('assets/icons/logo.svg'),
          SvgPicture.asset('assets/icons/ESEP.svg'),
          const Text(
            AppText.allYourFinanceIntoModernApp,
            style: TextStyle(color: Colors.black),
          )
        ],
      )),
    );
  }
}
