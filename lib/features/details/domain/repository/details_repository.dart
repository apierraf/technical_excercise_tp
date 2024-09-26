import 'package:tecnical_excercise_tp/features/details/domain/model/movie_details/movie_details.dart';

abstract class DetailsRepository {
  Future<MovieDetails?> getDetails(int id);
}
