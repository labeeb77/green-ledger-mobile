// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_result_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImportResultDtoOutput _$ImportResultDtoOutputFromJson(Map<String, dynamic> json) => _ImportResultDtoOutput(
  ok: json['ok'] as bool,
  imported: (json['imported'] as num).toInt(),
  errors: (json['errors'] as List<dynamic>).map((e) => Errors.fromJson(e as Map<String, dynamic>)).toList(),
);

Map<String, dynamic> _$ImportResultDtoOutputToJson(_ImportResultDtoOutput instance) => <String, dynamic>{
  'ok': instance.ok,
  'imported': instance.imported,
  'errors': instance.errors,
};
