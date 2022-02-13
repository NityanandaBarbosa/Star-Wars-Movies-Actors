import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:star_wars_movies_people/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (() => Get.toNamed(Routes.OFICIAL_SITE)),
          icon: Text("Site Oficial"),
        ),
        actions: [
          IconButton(onPressed: (() => null), icon: Icon(Icons.person))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(() {
          return Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: controller.chipsLabels
                      .map((label) => ActionChip(
                            label: Text(label),
                            // selected: controller.currentLabel.value == label
                            // ? true
                            // : false,
                            shape: RoundedRectangleBorder(),
                            onPressed: (() => controller.increment(label)),
                          ))
                      .toList()),
              Container(
                  child: Text(
                'HomeView is working ${controller.currentLabel.value}',
                style: TextStyle(fontSize: 20),
              )),
            ],
          );
        }),
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: (() => controller.increment(controller.index.value + 1)),
      //     child: Icon(Icons.next_plan)),
    );
  }
}
