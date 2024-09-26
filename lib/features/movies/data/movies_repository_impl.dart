import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre_model.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/movies_model/movies_model.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/movies_model/result.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/repository/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final Dio dio;

  MoviesRepositoryImpl(this.dio);

  @override
  Future<List<Genre>> getGenres() async {
    try {
      var request = await dio.get('genre/movie/list');
      if (request.statusCode == 200) {
        var genreModel = GenreModel.fromJson(request.data);
        return genreModel.genres ?? [];
      } else {
        return [];
      }
    } on DioException catch (error) {
      debugPrint(error.message.toString());
      return [];
    }
  }

  @override
  Future<List<Result>> fetchMovies(int page, List<int> genreIds) async {
    try {
      var request = await dio.get(
        'discover/movie',
        queryParameters: {
          'page': page,
          'with_genres': genreIds.join(','),
        },
      );
      if (request.statusCode == 200) {
        var moviesModel = MoviesModel.fromJson(request.data);

        print(moviesModel.results![0].backdropPath);

        return moviesModel.results ?? [];
      } else {
        return [];
      }
    } on DioException catch (error) {
      debugPrint(error.message.toString());
      return [];
    }
  }
}
