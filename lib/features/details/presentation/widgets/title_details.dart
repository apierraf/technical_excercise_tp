import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tecnical_excercise_tp/features/details/domain/model/movie_details/genre.dart';

class TitleDetails extends StatelessWidget {
  final String title;
  final String poster;
  final String releaseDate;
  final double voteAverage;
  final String overview;
  final List<Genre> genres;
  final Locale locale;
  const TitleDetails(
      {super.key,
      required this.title,
      required this.poster,
      required this.releaseDate,
      required this.voteAverage,
      required this.overview,
      required this.genres,
      required this.locale});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 170,
                width: 120,
                child: CachedNetworkImage(
                  imageUrl: poster,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.calendar_today),
                        const SizedBox(width: 5),
                        Text(
                          DateFormat.yMMMMd(locale.languageCode)
                              .format(DateTime.parse(releaseDate)),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber),
                        Text(
                          '$voteAverage',
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      children: genres
                          .map((genre) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Chip(
                                  labelPadding:
                                      const EdgeInsetsDirectional.symmetric(
                                          horizontal: 3, vertical: 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  label: Text(
                                    genre.name ?? '',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            overview,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
