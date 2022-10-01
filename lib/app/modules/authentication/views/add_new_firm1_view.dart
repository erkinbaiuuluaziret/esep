import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddNewFirm1View extends GetView {
  const AddNewFirm1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddNewFirm1View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddNewFirm1View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
