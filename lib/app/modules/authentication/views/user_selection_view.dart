import 'package:flutter/material.dart';

import 'package:get/get.dart';

class UserSelectionView extends GetView {
  const UserSelectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserSelectionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'UserSelectionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
