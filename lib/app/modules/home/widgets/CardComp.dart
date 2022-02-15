import 'package:flutter/material.dart';

import '../models/films_model.dart';

class CardComp extends StatelessWidget {
  final Movie movie;
  const CardComp({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "${movie.title}",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "${movie.director}",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
