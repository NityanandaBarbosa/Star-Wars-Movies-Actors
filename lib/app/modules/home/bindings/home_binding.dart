import 'package:get/get.dart';
import 'package:star_wars_movies_people/app/modules/home/repositories/films_repository.dart';
import 'package:star_wars_movies_people/app/shared/dio/dio.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<DioClient>(
      () => DioClient(),
    );
    Get.lazyPut<FilmsRepository>(
      () => FilmsRepository(),
    );
  }
}
