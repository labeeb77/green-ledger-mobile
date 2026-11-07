// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'update_business_settings_dto_bill_format.dart';

part 'update_business_settings_dto.freezed.dart';
part 'update_business_settings_dto.g.dart';

@Freezed()
abstract class UpdateBusinessSettingsDto with _$UpdateBusinessSettingsDto {
  const factory UpdateBusinessSettingsDto({
    String? name,
    String? phone,
    String? address,
    String? billPrefix,
    String? receiptPrefix,
    String? goodsReceiptPrefix,
    UpdateBusinessSettingsDtoBillFormat? billFormat,
    String? billFooter,

    /// Amount in paise (₹1 = 100)
    int? wastageApprovalThreshold,
    String? logoFileId,
  }) = _UpdateBusinessSettingsDto;

  factory UpdateBusinessSettingsDto.fromJson(Map<String, Object?> json) => _$UpdateBusinessSettingsDtoFromJson(json);
}
