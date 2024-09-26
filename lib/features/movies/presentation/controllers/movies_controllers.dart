import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tecnical_excercise_tp/features/movies/data/movies_repository_impl.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre.dart';
import 'package:tecnical_excercise_tp/shared/network/dio_config.dart';

part 'movies_controllers.g.dart';

@riverpod
FutureOr<List<Genre>> getGenresController(GetGenresControllerRef ref) async {
  final dio = ref.read(dioConfigProvider);
  var genreList = await MoviesRepositoryImpl(dio).getGenres();
  return genreList;
}

@riverpod
class GenreController extends _$GenreController {
  @override
  List<Genre> build(List<Genre> genres) {
    return genres;
  }

  changeSelected(int id) {
    state = state.map((e) {
      if (e.id == id) {
        return e.copyWith(selected: !e.selected!);
      }
      return e;
    }).toList();
  }

  List<int> getIdSelected() {
    return state
        .where((element) => element.selected!)
        .map((e) => e.id!)
        .toList();
  }
}
