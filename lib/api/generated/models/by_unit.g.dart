// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'by_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ByUnit _$ByUnitFromJson(Map<String, dynamic> json) =>
    _ByUnit(unit: Unit.fromJson(json['unit'] as String), quantity: json['quantity'] as String);

Map<String, dynamic> _$ByUnitToJson(_ByUnit instance) => <String, dynamic>{
  'unit': instance.unit,
  'quantity': instance.quantity,
};
