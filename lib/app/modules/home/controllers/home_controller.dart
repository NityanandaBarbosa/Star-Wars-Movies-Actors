import 'package:get/get.dart';
import 'package:dartz/dartz.dart';
import 'package:star_wars_movies_people/app/modules/home/models/actors_model.dart';
import 'package:star_wars_movies_people/app/modules/home/models/films_model.dart';
import 'package:star_wars_movies_people/app/modules/home/repositories/actors_repository.dart';
import 'package:star_wars_movies_people/app/modules/home/repositories/films_repository.dart';
import 'package:star_wars_movies_people/app/shared/exception/Failure.dart';

class HomeController extends GetxController {
  final filmsRepo = Get.find<FilmsRepository>();
  final actorsRepo = Get.find<ActorsRepository>();

  final chipsLabels = ["Filmes", "Personagens", "Favoritos"];

  final currentLabel = "Filmes".obs;

  final listMovies = <Movie>[].obs;

  final listActors = <Actor>[].obs;

  final isLoading = true.obs;

  @override
  void onInit() {
    getFilms();
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {}

  void selectCategory(String newIndex) => currentLabel.value = newIndex;

  Future<void> getFilms() async {
    isLoading.value = true;
    listMovies.clear();
    filmsRepo.getFilms().then((value) => value.fold((l) => print(l.error), (r) {
          setMoviesList(r.results!);
        }));
    actorsRepo
        .getActors()
        .then((value) => value.fold((l) => print(l.error), (r) {
              setActorsList(r.actors!);
              isLoading.value = false;
            }));
  }

  void setMoviesList(List<Movie> value) {
    listMovies.value = value;
  }

  void setActorsList(List<Actor> value) {
    listActors.value = value;
    print(value.length);
  }
}
