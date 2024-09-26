import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tecnical_excercise_tp/core/constants/app_constants.dart';
import 'package:tecnical_excercise_tp/features/details/domain/model/movie_details/production_company.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CompaniesDetails extends StatelessWidget {
  final List<ProductionCompany> companies;
  const CompaniesDetails({super.key, required this.companies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)?.companies ?? '',
            style: const TextStyle(
              fontSize: 17,
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: companies.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 60,
                  width: 100,
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: CachedNetworkImage(
                          imageUrl: '$IMAGE_URL${companies[index].logoPath}',
                          fit: BoxFit.fitWidth,
                          errorWidget: (context, url, error) => const Icon(
                            Icons.error,
                            size: 50,
                          ),
                          progressIndicatorBuilder: (context, url, progress) =>
                              Center(
                            child: CircularProgressIndicator(
                              value: progress.progress,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Flexible(
                        child: Text(
                          companies[index].name ?? '',
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
