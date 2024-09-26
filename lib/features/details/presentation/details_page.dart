import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tecnical_excercise_tp/common/loading_widgets.dart';
import 'package:tecnical_excercise_tp/core/constants/app_constants.dart';
import 'package:tecnical_excercise_tp/features/details/presentation/controllers/details_controller.dart';
import 'package:tecnical_excercise_tp/features/details/presentation/widgets/companies_details.dart';
import 'package:tecnical_excercise_tp/features/details/presentation/widgets/header_details.dart';
import 'package:tecnical_excercise_tp/features/details/presentation/widgets/title_details.dart';

class DetailsPage extends ConsumerWidget {
  final int id;
  const DetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var movieDetails = ref.watch(fetchDetailsControllerProvider(id));
    return Scaffold(
      body: switch (movieDetails) {
        AsyncData(:final value) => value != null
            ? CustomScrollView(
                slivers: [
                  HeaderDetails(image: '$IMAGE_URL${value.backdropPath}'),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        TitleDetails(
                          title: value.title ?? '',
                          poster: '$IMAGE_URL${value.posterPath}',
                          releaseDate: value.releaseDate ?? '',
                          voteAverage: value.voteAverage ?? 0,
                          overview: value.overview ?? '',
                          genres: value.genres ?? [],
                        ),
                        CompaniesDetails(
                          companies: value.productionCompanies ?? [],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : const Center(child: Text('Error')),
        _ => loadingDetails(context),
      },
    );
  }
}
