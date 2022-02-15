import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:star_wars_movies_people/app/shared/consts/apiConsts.dart';
import 'package:star_wars_movies_people/app/shared/dio/dio.dart';
import 'package:star_wars_movies_people/app/shared/exception/Failure.dart';

import '../models/films_model.dart';

class FilmsRepository {
  final dio = Get.find<DioClient>().dio;

  Future<Either<Failure, Films>> getFilms() async {
    try{
      final response = await dio.get(ApiConsts.films);
      final films = Films.fromJson(response.data);
      print(films);
      return Right(films);
    }catch(error){
      print("$error");
      return Left(Failure("$error"));
    }
  }
}
