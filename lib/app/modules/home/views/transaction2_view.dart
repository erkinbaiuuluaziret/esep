import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Transaction2View extends GetView {
  const Transaction2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Transaction2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
