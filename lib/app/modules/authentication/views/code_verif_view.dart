import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CodeverifView extends GetView {
  const CodeverifView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CodeverifView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CodeverifView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
