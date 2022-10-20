import 'package:flutter/material.dart';

import '../app/widgets/search_ex,widget.dart';

class SearchScreen extends StatelessWidget {
  var size, height, width;
  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Color(0xffD4E2E2),
      body: SearchWidget(width: width, height: height),
    );
  }
}
