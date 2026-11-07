// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_return_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCustomerReturnDto _$CreateCustomerReturnDtoFromJson(Map<String, dynamic> json) => _CreateCustomerReturnDto(
  customerId: json['customerId'] as String,
  lines: (json['lines'] as List<dynamic>).map((e) => Lines18.fromJson(e as Map<String, dynamic>)).toList(),
  billId: json['billId'] as String?,
  returnDate: json['returnDate'] as String?,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$CreateCustomerReturnDtoToJson(_CreateCustomerReturnDto instance) => <String, dynamic>{
  'customerId': instance.customerId,
  'lines': instance.lines,
  'billId': instance.billId,
  'returnDate': instance.returnDate,
  'notes': instance.notes,
};
