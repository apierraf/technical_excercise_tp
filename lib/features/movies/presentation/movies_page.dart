import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tecnical_excercise_tp/common/loading_widgets.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/movies_model/result.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/controllers/movies_controllers.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/widgets/genre_list.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/widgets/movies_list.dart';
import 'package:go_router/go_router.dart';

class MoviesPage extends ConsumerWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Genre>> fetchGenre =
        ref.watch(getGenresControllerProvider);
    final AsyncValue<List<Result>> fetchMovies =
        ref.watch(moviesControllersProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(AppLocalizations.of(context)?.movies ?? ''),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => context.goNamed('search_movie'),
          ),
        ],
      ),
      body: Column(
        children: [
          switch (fetchGenre) {
            AsyncData(:final value) => GenreList(genres: value),
            _ => genreLoading(context)
          },
          switch (fetchMovies) {
            AsyncData(:final value) =>
              Expanded(child: MoviesList(movies: value)),
            _ => Expanded(child: loadingMOvies(context)),
          },
        ],
      ),
    );
  }
}
