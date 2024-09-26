import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/movies_model/result.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/controllers/movies_controllers.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/widgets/movie_item.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

class MoviesList extends ConsumerWidget {
  final List<Result> movies;
  const MoviesList({super.key, required this.movies});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfiniteList(
      onFetchData: () async {
        ref.read(moviesControllersProvider.notifier).fetchMoreMovies([]);
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return MovieItem(movie: movies[index]);
      },
    );
  }
}
