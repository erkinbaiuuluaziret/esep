import 'package:esep/app/theme/textStyle/text_stayle.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 19, left: 11),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.account_circle_outlined,
                    color: Color(0xff3469C0),
                    size: 60.0,
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                           Text(
                            ' Балтабаев Тешебай Кетменович',
                            style: TextStyles.montserratWhitek18w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 57),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Color(0xffFFFFFF),
                    ),
                    width: width / 1.2,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: '    Сумма,расход,дата',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13.0),
                          borderSide:
                              BorderSide(color: Color(0xff3469C0), width: 2.0),
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                          color: Color(0xff3469C0),
                        ),
                        suffixIcon: Icon(
                          Icons.cancel_outlined,
                          size: 30,
                          color: Color(0xff3469C0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13.0),
                          borderSide:
                              BorderSide(color: Color(0xff3469C0), width: 2),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xffEBF5F5),
          borderRadius: BorderRadius.circular(30),
        ),
        width: width / 1,
        height: height / 2.9,
      ),
    );
  }
}
