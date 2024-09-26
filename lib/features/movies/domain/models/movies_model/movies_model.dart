import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'movies_model.g.dart';

@JsonSerializable()
class MoviesModel {
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  MoviesModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return _$MoviesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MoviesModelToJson(this);
}
