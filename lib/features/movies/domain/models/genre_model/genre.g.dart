// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenreImpl _$$GenreImplFromJson(Map<String, dynamic> json) => _$GenreImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      selected: json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$GenreImplToJson(_$GenreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'selected': instance.selected,
    };
