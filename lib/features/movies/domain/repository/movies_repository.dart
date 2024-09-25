import 'package:fpdart/fpdart.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre_model.dart';

abstract class MoviesRepository {
  Future<Either<GenreModel, String>> getGenres();
}
