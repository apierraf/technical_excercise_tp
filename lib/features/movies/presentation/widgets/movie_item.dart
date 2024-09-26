import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tecnical_excercise_tp/core/constants/app_constants.dart';
import 'package:go_router/go_router.dart';
import 'package:tecnical_excercise_tp/features/movies/domain/models/movies_model/result.dart';

class MovieItem extends StatelessWidget {
  final Result movie;
  const MovieItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: const VisualDensity(vertical: 4),
      title: Text(
        movie.title ?? '',
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      subtitle: Column(
        children: [
          Text(
            movie.overview ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber),
                  Text(
                    '${movie.voteAverage}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.thumb_up, color: Colors.blue),
                  const SizedBox(width: 5),
                  Text(
                    '${movie.popularity}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      leading: CachedNetworkImage(
        imageUrl: '$IMAGE_URL${movie.posterPath}',
        width: 70,
        height: 100,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, progress) {
          return Center(
            child: CircularProgressIndicator(
              value: progress.progress,
            ),
          );
        },
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
      onTap: () => context.goNamed('details_page', extra: movie.id),
    );
  }
}
