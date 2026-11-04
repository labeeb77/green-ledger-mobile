// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_dispatch_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDispatchDto _$CreateDispatchDtoFromJson(Map<String, dynamic> json) =>
    _CreateDispatchDto(
      orderId: json['orderId'] as String,
      lines: (json['lines'] as List<dynamic>)
          .map((e) => Lines16.fromJson(e as Map<String, dynamic>))
          .toList(),
      dispatchDate: json['dispatchDate'] == null
          ? null
          : DateTime.parse(json['dispatchDate'] as String),
      vehicleNo: json['vehicleNo'] as String?,
    );

Map<String, dynamic> _$CreateDispatchDtoToJson(_CreateDispatchDto instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'lines': instance.lines,
      'dispatchDate': instance.dispatchDate?.toIso8601String(),
      'vehicleNo': instance.vehicleNo,
    };
