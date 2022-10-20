import 'package:esep/app/theme/textStyle/text_stayle.dart';
import 'package:flutter/material.dart';

import '../app/widgets/search_ex,widget.dart';

class NowSearchResult extends StatelessWidget {
  var size, height, width;
  NowSearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        backgroundColor: Color(0xffD4E2E2),
        body: Column(children: [
          SearchWidget(
            width: width,
            height: height,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(child: Image.asset('assets/images/search.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Нет результатов поиска “Песок”',
              style: TextStyles.montserratBlack14w600,
            ),
          )
        ]));
  }
}
