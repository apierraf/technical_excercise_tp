import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tecnical_excercise_tp/features/details/domain/model/movie_details/movie_details.dart';
import 'package:tecnical_excercise_tp/features/details/domain/repository/details_repository.dart';

class DetailsRepositoryImpl implements DetailsRepository {
  final Dio dio;

  DetailsRepositoryImpl({required this.dio});

  @override
  Future<MovieDetails?> getDetails(int id) async {
    try {
      final response = await dio.get('movie/$id');
      if (response.statusCode == 200) {
        return MovieDetails.fromJson(response.data);
      } else {
        return null;
      }
    } on DioException catch (error) {
      debugPrint(error.message.toString());
      return null;
    }
  }
}
