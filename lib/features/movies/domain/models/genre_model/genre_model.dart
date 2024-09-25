import 'package:freezed_annotation/freezed_annotation.dart';

import 'genre.dart';

part 'genre_model.freezed.dart';
part 'genre_model.g.dart';

@unfreezed
class GenreModel with _$GenreModel {
  factory GenreModel({
    List<Genre>? genres,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);
}
