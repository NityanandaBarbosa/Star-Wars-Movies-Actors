import 'package:flutter/material.dart';
import 'package:star_wars_movies_people/app/modules/home/models/actors_model.dart';

class ActorCard extends StatelessWidget {
  final Actor actor;
  ActorCard({Key? key, required this.actor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "${actor.name}",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "${actor.gender}",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
