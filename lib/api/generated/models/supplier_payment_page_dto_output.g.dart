// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_payment_page_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupplierPaymentPageDtoOutput _$SupplierPaymentPageDtoOutputFromJson(Map<String, dynamic> json) =>
    _SupplierPaymentPageDtoOutput(
      items: (json['items'] as List<dynamic>)
          .map((e) => SupplierPaymentDtoOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['nextCursor'] as String?,
    );

Map<String, dynamic> _$SupplierPaymentPageDtoOutputToJson(_SupplierPaymentPageDtoOutput instance) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
};
