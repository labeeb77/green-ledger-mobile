// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_count_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateCountDto _$UpdateCountDtoFromJson(Map<String, dynamic> json) =>
    _UpdateCountDto(
      lines: (json['lines'] as List<dynamic>)
          .map((e) => Lines11.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateCountDtoToJson(_UpdateCountDto instance) =>
    <String, dynamic>{'lines': instance.lines};
