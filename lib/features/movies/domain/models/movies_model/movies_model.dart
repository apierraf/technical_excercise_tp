import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_model.freezed.dart';
part 'movies_model.g.dart';

@freezed
class MoviesModel with _$MoviesModel {
  const factory MoviesModel({
    int? page,
    List<Movies>? results,
    int? totalPages,
    int? totalResults,
  }) = _MoviesModel;

  factory MoviesModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesModelFromJson(json);
}

@freezed
class Movies with _$Movies {
  const factory Movies({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}
