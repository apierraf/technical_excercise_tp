import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/genre_model/genre_model.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/controllers/movies_controllers.dart';

class GenreList extends ConsumerStatefulWidget {
  const GenreList({super.key});

  @override
  ConsumerState<GenreList> createState() => _GenreListState();
}

class _GenreListState extends ConsumerState<GenreList> {
  @override
  Widget build(BuildContext context) {
    var genres = ref.watch(getGenresControllerProvider);
    return genres.when(
      data: (data) {
        if (data is String) return Text(data);
        data as GenreModel;

        var genreList = ref.read(genreControllerProvider(data.genres!));

        return SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.1,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: genreList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: ChoiceChip(
                  label: Text(genreList[index].name ?? ''),
                  selected: genreList[index].selected ?? false,
                  onSelected: (value) {
                    setState(() {
                      genreList[index] = genreList[index].copyWith(
                        selected: value,
                      );
                    });
                    // print(ref
                    //     .read(genreControllerProvider(genreList).notifier)
                    //     .getIdSelected());
                  },
                ),
              );
            },
          ),
        );
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => genreLoading(context),
    );
  }
}

Widget genreLoading(BuildContext context) => SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: Shimmer.fromColors(
        direction: ShimmerDirection.ltr,
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              4,
              (index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                      border: Border.all(
                        color: Colors.grey.shade800,
                        width: 1,
                      ),
                    ),
                    width: 100,
                    height: MediaQuery.sizeOf(context).height * 0.05,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
