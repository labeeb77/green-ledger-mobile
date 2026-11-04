// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerDtoOutput _$CustomerDtoOutputFromJson(Map<String, dynamic> json) =>
    _CustomerDtoOutput(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String?,
      area: json['area'] as String?,
      address: json['address'] as String?,
      notes: json['notes'] as String?,
      priceGroup: json['priceGroup'] == null
          ? null
          : PriceGroup.fromJson(json['priceGroup'] as Map<String, dynamic>),
      creditLimit: (json['creditLimit'] as num).toInt(),
      creditDays: (json['creditDays'] as num).toInt(),
      agent: json['agent'] == null
          ? null
          : Agent.fromJson(json['agent'] as Map<String, dynamic>),
      openingBalance: (json['openingBalance'] as num).toInt(),
      status: CustomerDtoOutputStatus.fromJson(json['status'] as String),
      outstanding: (json['outstanding'] as num).toInt(),
      overdue: (json['overdue'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$CustomerDtoOutputToJson(_CustomerDtoOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'area': instance.area,
      'address': instance.address,
      'notes': instance.notes,
      'priceGroup': instance.priceGroup,
      'creditLimit': instance.creditLimit,
      'creditDays': instance.creditDays,
      'agent': instance.agent,
      'openingBalance': instance.openingBalance,
      'status': instance.status,
      'outstanding': instance.outstanding,
      'overdue': instance.overdue,
      'createdAt': instance.createdAt.toIso8601String(),
    };
