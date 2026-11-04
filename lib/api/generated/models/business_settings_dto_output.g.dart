// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_settings_dto_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessSettingsDtoOutput _$BusinessSettingsDtoOutputFromJson(
  Map<String, dynamic> json,
) => _BusinessSettingsDtoOutput(
  businessId: json['businessId'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String?,
  address: json['address'] as String?,
  billPrefix: json['billPrefix'] as String,
  receiptPrefix: json['receiptPrefix'] as String,
  goodsReceiptPrefix: json['goodsReceiptPrefix'] as String,
  billFormat: BusinessSettingsDtoOutputBillFormat.fromJson(
    json['billFormat'] as String,
  ),
  billFooter: json['billFooter'] as String?,
  wastageApprovalThreshold: (json['wastageApprovalThreshold'] as num).toInt(),
  logoFileId: json['logoFileId'] as String?,
  logoUrl: json['logoUrl'] as String?,
);

Map<String, dynamic> _$BusinessSettingsDtoOutputToJson(
  _BusinessSettingsDtoOutput instance,
) => <String, dynamic>{
  'businessId': instance.businessId,
  'name': instance.name,
  'phone': instance.phone,
  'address': instance.address,
  'billPrefix': instance.billPrefix,
  'receiptPrefix': instance.receiptPrefix,
  'goodsReceiptPrefix': instance.goodsReceiptPrefix,
  'billFormat': instance.billFormat,
  'billFooter': instance.billFooter,
  'wastageApprovalThreshold': instance.wastageApprovalThreshold,
  'logoFileId': instance.logoFileId,
  'logoUrl': instance.logoUrl,
};
