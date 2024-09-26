// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoviesModel _$MoviesModelFromJson(Map<String, dynamic> json) {
  return _MoviesModel.fromJson(json);
}

/// @nodoc
mixin _$MoviesModel {
  int? get page => throw _privateConstructorUsedError;
  List<Movies>? get results => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;

  /// Serializes this MoviesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoviesModelCopyWith<MoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesModelCopyWith<$Res> {
  factory $MoviesModelCopyWith(
          MoviesModel value, $Res Function(MoviesModel) then) =
      _$MoviesModelCopyWithImpl<$Res, MoviesModel>;
  @useResult
  $Res call(
      {int? page, List<Movies>? results, int? totalPages, int? totalResults});
}

/// @nodoc
class _$MoviesModelCopyWithImpl<$Res, $Val extends MoviesModel>
    implements $MoviesModelCopyWith<$Res> {
  _$MoviesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movies>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesModelImplCopyWith<$Res>
    implements $MoviesModelCopyWith<$Res> {
  factory _$$MoviesModelImplCopyWith(
          _$MoviesModelImpl value, $Res Function(_$MoviesModelImpl) then) =
      __$$MoviesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page, List<Movies>? results, int? totalPages, int? totalResults});
}

/// @nodoc
class __$$MoviesModelImplCopyWithImpl<$Res>
    extends _$MoviesModelCopyWithImpl<$Res, _$MoviesModelImpl>
    implements _$$MoviesModelImplCopyWith<$Res> {
  __$$MoviesModelImplCopyWithImpl(
      _$MoviesModelImpl _value, $Res Function(_$MoviesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$MoviesModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movies>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesModelImpl implements _MoviesModel {
  const _$MoviesModelImpl(
      {this.page,
      final List<Movies>? results,
      this.totalPages,
      this.totalResults})
      : _results = results;

  factory _$MoviesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesModelImplFromJson(json);

  @override
  final int? page;
  final List<Movies>? _results;
  @override
  List<Movies>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalPages;
  @override
  final int? totalResults;

  @override
  String toString() {
    return 'MoviesModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesModelImplCopyWith<_$MoviesModelImpl> get copyWith =>
      __$$MoviesModelImplCopyWithImpl<_$MoviesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesModelImplToJson(
      this,
    );
  }
}

abstract class _MoviesModel implements MoviesModel {
  const factory _MoviesModel(
      {final int? page,
      final List<Movies>? results,
      final int? totalPages,
      final int? totalResults}) = _$MoviesModelImpl;

  factory _MoviesModel.fromJson(Map<String, dynamic> json) =
      _$MoviesModelImpl.fromJson;

  @override
  int? get page;
  @override
  List<Movies>? get results;
  @override
  int? get totalPages;
  @override
  int? get totalResults;

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoviesModelImplCopyWith<_$MoviesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Movies _$MoviesFromJson(Map<String, dynamic> json) {
  return _Movies.fromJson(json);
}

/// @nodoc
mixin _$Movies {
  bool? get adult => throw _privateConstructorUsedError;
  String? get backdropPath => throw _privateConstructorUsedError;
  List<int>? get genreIds => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get originalLanguage => throw _privateConstructorUsedError;
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  String? get posterPath => throw _privateConstructorUsedError;
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  double? get voteAverage => throw _privateConstructorUsedError;
  int? get voteCount => throw _privateConstructorUsedError;

  /// Serializes this Movies to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Movies
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoviesCopyWith<Movies> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesCopyWith<$Res> {
  factory $MoviesCopyWith(Movies value, $Res Function(Movies) then) =
      _$MoviesCopyWithImpl<$Res, Movies>;
  @useResult
  $Res call(
      {bool? adult,
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
      int? voteCount});
}

/// @nodoc
class _$MoviesCopyWithImpl<$Res, $Val extends Movies>
    implements $MoviesCopyWith<$Res> {
  _$MoviesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Movies
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesImplCopyWith<$Res> implements $MoviesCopyWith<$Res> {
  factory _$$MoviesImplCopyWith(
          _$MoviesImpl value, $Res Function(_$MoviesImpl) then) =
      __$$MoviesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
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
      int? voteCount});
}

/// @nodoc
class __$$MoviesImplCopyWithImpl<$Res>
    extends _$MoviesCopyWithImpl<$Res, _$MoviesImpl>
    implements _$$MoviesImplCopyWith<$Res> {
  __$$MoviesImplCopyWithImpl(
      _$MoviesImpl _value, $Res Function(_$MoviesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Movies
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$MoviesImpl(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesImpl implements _Movies {
  const _$MoviesImpl(
      {this.adult,
      this.backdropPath,
      final List<int>? genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount})
      : _genreIds = genreIds;

  factory _$MoviesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesImplFromJson(json);

  @override
  final bool? adult;
  @override
  final String? backdropPath;
  final List<int>? _genreIds;
  @override
  List<int>? get genreIds {
    final value = _genreIds;
    if (value == null) return null;
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? id;
  @override
  final String? originalLanguage;
  @override
  final String? originalTitle;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  final String? posterPath;
  @override
  final DateTime? releaseDate;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  final double? voteAverage;
  @override
  final int? voteCount;

  @override
  String toString() {
    return 'Movies(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdropPath,
      const DeepCollectionEquality().hash(_genreIds),
      id,
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      voteCount);

  /// Create a copy of Movies
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesImplCopyWith<_$MoviesImpl> get copyWith =>
      __$$MoviesImplCopyWithImpl<_$MoviesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesImplToJson(
      this,
    );
  }
}

abstract class _Movies implements Movies {
  const factory _Movies(
      {final bool? adult,
      final String? backdropPath,
      final List<int>? genreIds,
      final int? id,
      final String? originalLanguage,
      final String? originalTitle,
      final String? overview,
      final double? popularity,
      final String? posterPath,
      final DateTime? releaseDate,
      final String? title,
      final bool? video,
      final double? voteAverage,
      final int? voteCount}) = _$MoviesImpl;

  factory _Movies.fromJson(Map<String, dynamic> json) = _$MoviesImpl.fromJson;

  @override
  bool? get adult;
  @override
  String? get backdropPath;
  @override
  List<int>? get genreIds;
  @override
  int? get id;
  @override
  String? get originalLanguage;
  @override
  String? get originalTitle;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  String? get posterPath;
  @override
  DateTime? get releaseDate;
  @override
  String? get title;
  @override
  bool? get video;
  @override
  double? get voteAverage;
  @override
  int? get voteCount;

  /// Create a copy of Movies
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoviesImplCopyWith<_$MoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
