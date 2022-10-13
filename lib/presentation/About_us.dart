import 'package:esep/app/constans/app_text/app_text.dart';
import 'package:esep/app/theme/textStyle/text_stayle.dart';
import 'package:flutter/material.dart';

class UiScreen extends StatelessWidget {
  var size, height, width;
  UiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Color(0xffD4E2E2),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 83, left: 6, right: 270),
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffD4E2E2),
                      borderRadius: BorderRadius.circular(28),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 17,
                            spreadRadius: 1,
                            offset: Offset(1, 5))
                      ]),
                  width: width / 7,
                  height: height / 14.5,
                  child: Icon(Icons.arrow_back))),
          Padding(
            padding: const EdgeInsets.only(top: 34, left: 30, right: 29),
            child: Image(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110, left: 55, right: 55),
            child: Container(
              color: Color(0xffD4E2E2),
              width: width / 0.3,
              height: height / 2.4,
              child: Center(
                child: Column(
                  children: [
                    Center(
                        child: Text(AppText.logoText,
                            style: TextStyles.montserratBlack20w700)),
                    Text('Версия:0.0.1'),
                    SizedBox(
                      height: 90,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 68, right: 68),
                      child: Text(
                          ' ОсОО “UniDevs” Кыргызстан, г.Ош, мкр. Анар 15а Почта: UniDevs@gmail.com Тел: +996 777 000 111 +996 555 000 111 '),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Center(child: Text('Все права защищены'))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
