// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movements_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovementsDtoOutput _$MovementsDtoOutputFromJson(Map<String, dynamic> json) => _MovementsDtoOutput(
  product: Product7.fromJson(json['product'] as Map<String, dynamic>),
  from: json['from'] as String,
  to: json['to'] as String,
  opening: json['opening'] as String,
  entries: (json['entries'] as List<dynamic>).map((e) => Entries2.fromJson(e as Map<String, dynamic>)).toList(),
  closing: json['closing'] as String,
);

Map<String, dynamic> _$MovementsDtoOutputToJson(_MovementsDtoOutput instance) => <String, dynamic>{
  'product': instance.product,
  'from': instance.from,
  'to': instance.to,
  'opening': instance.opening,
  'entries': instance.entries,
  'closing': instance.closing,
};
