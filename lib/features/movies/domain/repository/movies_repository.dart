import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/movies_model/result.dart';

abstract class MoviesRepository {
  Future<List<Genre>> getGenres();
  Future<List<Result>> fetchMovies(int page, List<int> genreIds);
}
