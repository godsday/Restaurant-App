import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/menu_screen_controller.dart';

class MenuScreenView extends GetView<MenuScreenController> {
  const MenuScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MenuScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MenuScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
