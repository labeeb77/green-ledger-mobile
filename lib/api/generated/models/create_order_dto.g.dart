// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderDto _$CreateOrderDtoFromJson(Map<String, dynamic> json) =>
    _CreateOrderDto(
      customerId: json['customerId'] as String,
      lines: (json['lines'] as List<dynamic>)
          .map((e) => Lines15.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderDate: json['orderDate'] == null
          ? null
          : DateTime.parse(json['orderDate'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$CreateOrderDtoToJson(_CreateOrderDto instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'lines': instance.lines,
      'orderDate': instance.orderDate?.toIso8601String(),
      'notes': instance.notes,
    };
