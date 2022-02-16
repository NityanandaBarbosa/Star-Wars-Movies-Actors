import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:star_wars_movies_people/app/modules/home/widgets/ActorCard.dart';
import 'package:star_wars_movies_people/app/modules/home/widgets/CardComp.dart';
import 'package:star_wars_movies_people/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import '../widgets/WidgetList.dart';

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
          return !controller.isLoading.value
              ? Column(
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: controller.chipsLabels
                        .map((label) => ActionChip(
                              label: Text(label),
                              shape: RoundedRectangleBorder(),
                              onPressed: (() async {
                                controller.selectCategory(label);
                              }),
                            ))
                        .toList()),
                    WidgetList(currentLabel:controller.currentLabel.value, controller: controller),
                  ],
                )
              : Center(child: CircularProgressIndicator());
        }),
      ),
    ); 
  }
}
