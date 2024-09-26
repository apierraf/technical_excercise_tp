import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/movies_model/result.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/controllers/movies_controllers.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/widgets/movie_item.dart';

class MoviesList extends ConsumerStatefulWidget {
  final List<Result> movies;

  const MoviesList({super.key, required this.movies});

  @override
  ConsumerState<MoviesList> createState() => _MoviesListState();
}

class _MoviesListState extends ConsumerState<MoviesList> {
  ScrollController scrollController = ScrollController();
  bool loading = false;

  @override
  void initState() {
    scrollController.addListener(() async {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        await fecthMore();
      }
    });

    super.initState();
  }

  fecthMore() async {
    setState(() {
      loading = true;
    });

    ref.invalidate(moviesControllersProvider);
    await ref.read(moviesControllersProvider.notifier).fetchMoreMovies();

    setState(() {
      loading = false;
    });
  }

  @override
  void setState(VoidCallback fn) {
    if (!mounted) return;
    super.setState(fn);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: scrollController,
      separatorBuilder: (context, index) => const Divider(),
      itemCount:
          loading == true ? widget.movies.length + 1 : widget.movies.length,
      itemBuilder: (context, index) {
        if (index == widget.movies.length) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return MovieItem(movie: widget.movies[index]);
      },
    );
  }
}
