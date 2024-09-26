import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tecnical_excercise_tp/common/loading_widgets.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/movies_model/result.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/controllers/movies_controllers.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/widgets/movie_item.dart';

class SearchMovie extends ConsumerWidget {
  const SearchMovie({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Result>> searchMovies =
        ref.watch(searchMoviesControllerProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(AppLocalizations.of(context)?.search ?? ''),
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width,
              MediaQuery.sizeOf(context).height * 0.1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.search,
              onFieldSubmitted: (value) async {
                await ref
                    .read(searchMoviesControllerProvider.notifier)
                    .searchMovies(
                      value,
                    );
              },
              controller: TextEditingController(),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: AppLocalizations.of(context)?.search ?? '',
                suffixIcon: const Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      body: switch (searchMovies) {
        AsyncData(:final value) => ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              return MovieItem(
                movie: value[index],
              );
            }),
        _ => loadingMOvies(context),
      },
    );
  }
}
