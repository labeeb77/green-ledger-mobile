// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Errors _$ErrorsFromJson(Map<String, dynamic> json) =>
    _Errors(row: (json['row'] as num).toInt(), column: json['column'] as String?, message: json['message'] as String);

Map<String, dynamic> _$ErrorsToJson(_Errors instance) => <String, dynamic>{
  'row': instance.row,
  'column': instance.column,
  'message': instance.message,
};
