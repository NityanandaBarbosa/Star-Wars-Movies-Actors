import 'package:get/get.dart';
import 'package:dartz/dartz.dart';
import 'package:star_wars_movies_people/app/modules/home/models/films_model.dart';
import 'package:star_wars_movies_people/app/modules/home/repositories/films_repository.dart';

class HomeController extends GetxController {
  final filmsRepo = Get.find<FilmsRepository>();

  final chipsLabels = ["Filmes", "Personagens", "Favoritos"];

  final currentLabel = "Filmes".obs;

  final listMovies = <Movie>[].obs;

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

  void increment(String newIndex) => currentLabel.value = newIndex;

  Future<void> getFilms() async {
    listMovies.clear();
    final response = await filmsRepo.getFilms();
    response.fold((l) => print(l.error), (r) => setMoviesList(r.results!));
  }

  void setMoviesList(List<Movie> value) {
    listMovies.value = value;
  }
}
