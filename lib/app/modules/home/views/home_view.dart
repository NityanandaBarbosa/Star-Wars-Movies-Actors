import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:star_wars_movies_people/app/modules/home/widgets/CardComp.dart';
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
                            shape: RoundedRectangleBorder(),
                            onPressed: (() async {
                              await controller.getFilms();
                              controller.increment(label);
                            }),
                          ))
                      .toList()),
              Expanded(
                child: Container(
                  height: 150,
                  width: 300,
                  child: ListView.builder(
                    itemCount: controller.listMovies.length,
                    itemBuilder: (context, index) {
                      return CardComp(movie: controller.listMovies[index]);
                    },
                  )
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
