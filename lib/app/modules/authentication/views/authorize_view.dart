import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AuthorizeView extends GetView {
  const AuthorizeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AuthorizeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AuthorizeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
