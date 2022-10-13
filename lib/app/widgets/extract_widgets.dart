import 'package:flutter/material.dart';

class ContainerInput extends StatelessWidget {
  var size, height, width;
  String text;

  ContainerInput({Key? key, this.width, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
        width: width / 1.2,
        child: TextField(
          decoration: InputDecoration(
            label: Center(
              child: Text(text,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(color: Color(0xff3469C0), width: 2),
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20),
        ));
  }
}