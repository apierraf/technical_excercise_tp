import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/controllers/movies_controllers.dart';

class GenreList extends ConsumerStatefulWidget {
  final List<Genre> genres;
  const GenreList({super.key, required this.genres});

  @override
  ConsumerState<GenreList> createState() => _GenreListState();
}

class _GenreListState extends ConsumerState<GenreList> {
  @override
  Widget build(BuildContext context) {
    var genreController = ref.watch(genreControllerProvider(widget.genres));

    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genreController.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var genre = genreController[index];
          return Padding(
            padding: const EdgeInsets.all(5),
            child: ChoiceChip(
              label: Text(genre.name ?? ''),
              selected: genre.selected ?? false,
              onSelected: (value) {
                ref
                    .read(genreControllerProvider(widget.genres).notifier)
                    .changeSelected(genre.id!);

                setState(() {
                  ref.read(selectedIdsProvider(widget.genres));
                  print(
                      'Selected Ids: ${ref.read(selectedIdsProvider(widget.genres))}');
                });
              },
            ),
          );
        },
      ),
    );
  }
}
