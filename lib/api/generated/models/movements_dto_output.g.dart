// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movements_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovementsDtoOutput _$MovementsDtoOutputFromJson(Map<String, dynamic> json) =>
    _MovementsDtoOutput(
      product: Product7.fromJson(json['product'] as Map<String, dynamic>),
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
      opening: json['opening'] as String,
      entries: (json['entries'] as List<dynamic>)
          .map((e) => Entries2.fromJson(e as Map<String, dynamic>))
          .toList(),
      closing: json['closing'] as String,
    );

Map<String, dynamic> _$MovementsDtoOutputToJson(_MovementsDtoOutput instance) =>
    <String, dynamic>{
      'product': instance.product,
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
      'opening': instance.opening,
      'entries': instance.entries,
      'closing': instance.closing,
    };
