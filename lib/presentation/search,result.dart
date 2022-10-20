import 'package:flutter/material.dart';

import '../app/widgets/search_ex,widget.dart';

class SearchResult extends StatelessWidget {
  var size, height, width;
  SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Color(0xffD4E2E2),
      body: Column(
        children: [
          SearchWidget(width: width, height: height),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 200, top: 30, left: 10),
                  child: Text(
                    'Расход: Дата: 30.09.2022 15:00 Категория: Тендер Объект: Менделеев Материал: Цемент Сумма: 50 000 сом',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                width: width / 1.2,
                height: height / 5,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFE),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
