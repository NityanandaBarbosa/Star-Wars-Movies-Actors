import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';
import 'ActorCard.dart';
import 'CardComp.dart';

class WidgetList extends StatelessWidget {
  final String currentLabel;
  final HomeController controller;
  const WidgetList({Key? key, required this.currentLabel, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(currentLabel == "Filmes"){
          return Expanded(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 1000),
                height: 150,
                width: 300,
                child: ListView.builder(
                  itemCount: controller.listMovies.length,
                  itemBuilder: (context, index) {
                    return CardComp(
                        movie: controller.listMovies[index]);
                  },
                )),
          );
        }
        else{
          return Expanded(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 1000),
                height: 150,
                width: 300,
                child: ListView.builder(
                  itemCount: controller.listActors.length,
                  itemBuilder: (context, index) {
                    return ActorCard(
                        actor: controller.listActors[index]);
                  },
                )),
          );
        }
  }
}
