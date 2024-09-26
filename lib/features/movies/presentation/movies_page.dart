import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tecnical_excercise_tp/common/loading_widgets.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/controllers/movies_controllers.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/widgets/genre_list.dart';

class MoviesPage extends ConsumerWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Genre>> fetchGenre =
        ref.watch(getGenresControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.movies ?? ''),
      ),
      body: Column(
        children: [
          switch (fetchGenre) {
            AsyncData(:final value) => GenreList(genres: value),
            _ => genreLoading(context),
          }
          // Expanded(child: MoviesList()),
        ],
      ),
    );
  }
}
