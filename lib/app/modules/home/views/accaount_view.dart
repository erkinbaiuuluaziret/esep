import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AccaountView extends GetView {
  const AccaountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AccaountView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AccaountView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
