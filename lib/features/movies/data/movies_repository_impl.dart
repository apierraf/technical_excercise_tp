import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre_model.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/repository/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final Dio dio;

  MoviesRepositoryImpl(this.dio);

  @override
  Future<Either<GenreModel, String>> getGenres() async {
    try {
      var request = await dio.get('genre/movie/list');
      if (request.statusCode == 200) {
        return Left(GenreModel.fromJson(request.data));
      } else {
        return const Right('Error');
      }
    } on DioException catch (error) {
      return Right(error.message ?? '');
    }
  }
}
