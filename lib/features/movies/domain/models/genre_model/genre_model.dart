import 'package:json_annotation/json_annotation.dart';

import 'genre.dart';

part 'genre_model.g.dart';

@JsonSerializable()
class GenreModel {
  List<Genre>? genres;

  GenreModel({this.genres});

  factory GenreModel.fromJson(Map<String, dynamic> json) {
    return _$GenreModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GenreModelToJson(this);
}
