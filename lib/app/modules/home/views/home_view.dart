import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (() => controller.reset()), icon: Icon(Icons.restore))
        ],
      ),
      body: Center(
        child: Obx((() =>
        Text(
          'HomeView is working ${controller.count.value}',
          style: TextStyle(fontSize: 20),
        ))
      )),
      floatingActionButton : FloatingActionButton(
        onPressed: (() => controller.increment()),
        child: Icon(Icons.plus_one)),
    );
  }
}
