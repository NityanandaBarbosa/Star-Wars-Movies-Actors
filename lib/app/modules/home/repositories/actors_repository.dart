import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:star_wars_movies_people/app/modules/home/models/actors_model.dart';
import 'package:star_wars_movies_people/app/shared/consts/apiConsts.dart';
import 'package:star_wars_movies_people/app/shared/dio/dio.dart';
import 'package:star_wars_movies_people/app/shared/exception/Failure.dart';


class ActorsRepository {
  final dio = Get.find<DioClient>().dio;

  Future<Either<Failure, Actors>> getActors() async {
    try{
      final response = await dio.get(ApiConsts.actors);
      final actors = Actors.fromJson(response.data);
      print(actors);
      return Right(actors);
    }catch(error){
      print("$error");
      return Left(Failure("$error"));
    }
  }
}
