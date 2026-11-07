// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispatch_result_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DispatchResultDtoOutput _$DispatchResultDtoOutputFromJson(Map<String, dynamic> json) => _DispatchResultDtoOutput(
  dispatchId: json['dispatchId'] as String,
  orderStatus: DispatchResultDtoOutputOrderStatus.fromJson(json['orderStatus'] as String),
  billNumber: json['billNumber'] as String?,
  billTotal: (json['billTotal'] as num?)?.toInt(),
);

Map<String, dynamic> _$DispatchResultDtoOutputToJson(_DispatchResultDtoOutput instance) => <String, dynamic>{
  'dispatchId': instance.dispatchId,
  'orderStatus': instance.orderStatus,
  'billNumber': instance.billNumber,
  'billTotal': instance.billTotal,
};
