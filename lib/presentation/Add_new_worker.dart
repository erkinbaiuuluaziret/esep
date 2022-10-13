import 'package:esep/app/constans/app_text/app_text.dart';
import 'package:esep/app/theme/textStyle/text_stayle.dart';
import 'package:flutter/material.dart';

import '../app/theme/textStyle/text_stayle.dart';
import '../app/widgets/extract_widgets.dart';

class AddNewWorker extends StatelessWidget {
  var size, height, width;
  AddNewWorker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Color(0xffD4E2E2),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffEBF5F5),
                borderRadius: BorderRadius.circular(26),
              ),
              height: height / 1.6, //half of the height size
              width: width / 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 33, top: 40),
                    child: Container(
                      height: 40,
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: Color(0xff3469C0),
                            size: 60.0,
                          ),
                          const Text(
                            ' Бaлтабаев Тешебай Кетменович',
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 57),
                    child: ContainerInput(
                      width: width,
                      text: AppText.workername,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: ContainerInput(
                        width: width, text: AppText.employeephonenumber),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff3469C0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: 220,
                        height: 52,
                        child: Center(
                          child: Text(AppText.add,
                              style: TextStyles.montserratBlack14w600),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
