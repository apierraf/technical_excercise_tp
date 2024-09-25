import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tecnical_excercise_tp/features/movies/data/movies_repository_impl.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre.dart';
import 'package:tecnical_excercise_tp/shared/network/dio_config.dart';

part 'movies_controllers.g.dart';

@riverpod
FutureOr<dynamic> getGenresController(GetGenresControllerRef ref) async {
  dynamic result;
  final dio = ref.read(dioConfigProvider);
  var genreRequest = await MoviesRepositoryImpl(dio).getGenres();
  genreRequest.fold(
    (l) => result = l,
    (r) => result = r,
  );
  return result;
}

@riverpod
class GenreController extends _$GenreController {
  @override
  List<Genre> build(List<Genre> genres) {
    return genres;
  }

  List<int> getIdSelected() {
    return state
        .where((element) => element.selected!)
        .map((e) => e.id!)
        .toList();
  }
}
