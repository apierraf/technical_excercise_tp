import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.freezed.dart';
part 'genre.g.dart';

@unfreezed
class Genre with _$Genre {
  factory Genre({
    int? id,
    String? name,
    @Default(false) bool? selected,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}
