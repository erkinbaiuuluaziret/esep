import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeViewView extends GetView {
  const HomeViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeViewView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
