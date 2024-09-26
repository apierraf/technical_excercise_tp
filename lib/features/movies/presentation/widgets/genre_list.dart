import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/controllers/movies_controllers.dart';

class GenreList extends ConsumerWidget {
  final List<Genre> genres;
  const GenreList({super.key, required this.genres});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var genreController = ref.watch(genreControllerProvider(genres));

    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genreController.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var genre = genreController[index];
          return ChoiceChip(
            label: Text(genre.name ?? ''),
            selected: genre.selected ?? false,
            onSelected: (value) {
              ref
                  .read(genreControllerProvider(genres).notifier)
                  .changeSelected(genre.id!);
            },
          );
        },
      ),
    );
  }
}
