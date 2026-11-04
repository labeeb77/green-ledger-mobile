// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_business_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateBusinessSettingsDto _$UpdateBusinessSettingsDtoFromJson(
  Map<String, dynamic> json,
) => _UpdateBusinessSettingsDto(
  name: json['name'] as String?,
  phone: json['phone'] as String?,
  address: json['address'] as String?,
  billPrefix: json['billPrefix'] as String?,
  receiptPrefix: json['receiptPrefix'] as String?,
  goodsReceiptPrefix: json['goodsReceiptPrefix'] as String?,
  billFormat: json['billFormat'] == null
      ? null
      : UpdateBusinessSettingsDtoBillFormat.fromJson(
          json['billFormat'] as String,
        ),
  billFooter: json['billFooter'] as String?,
  wastageApprovalThreshold: (json['wastageApprovalThreshold'] as num?)?.toInt(),
  logoFileId: json['logoFileId'] as String?,
);

Map<String, dynamic> _$UpdateBusinessSettingsDtoToJson(
  _UpdateBusinessSettingsDto instance,
) => <String, dynamic>{
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
};
