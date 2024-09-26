import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tecnical_excercise_tp/features/movies/data/movies_repository_impl.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/movies_model/result.dart';
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
        e.selected = !e.selected;
      }
      return e;
    }).toList();
  }
}

@riverpod
List<int> selectedIds(SelectedIdsRef ref, List<Genre> genres) {
  var genresList = ref.watch(genreControllerProvider(genres));
  return genresList
      .where((element) => element.selected)
      .map((e) => e.id!)
      .toList();
}

@Riverpod(keepAlive: true)
class PagesController extends _$PagesController {
  @override
  int build() {
    return 1;
  }

  increment() => state += 1;
}

@riverpod
class MoviesControllers extends _$MoviesControllers {
  @override
  FutureOr<List<Result>> build() async {
    return await getMoviesByGenre();
  }

  Future<List<Result>> getMoviesByGenre() async {
    var dio = ref.read(dioConfigProvider);
    int page = ref.read(pagesControllerProvider);
    var genres = await ref.read(getGenresControllerProvider.future);
    var genreController = ref.read(genreControllerProvider(genres));
    var selectedIds = ref.read(selectedIdsProvider(genreController));
    var moviesList =
        await MoviesRepositoryImpl(dio).fetchMovies(page, selectedIds);
    return moviesList;
  }

  fetchMoreMovies() async {
    ref.read(pagesControllerProvider.notifier).increment();
    var results = await getMoviesByGenre();
    var moviesList = state.whenData((data) => data..addAll(results));
    state = moviesList;
  }
}
