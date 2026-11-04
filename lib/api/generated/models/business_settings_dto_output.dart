// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'business_settings_dto_output_bill_format.dart';

part 'business_settings_dto_output.freezed.dart';
part 'business_settings_dto_output.g.dart';

@Freezed()
abstract class BusinessSettingsDtoOutput with _$BusinessSettingsDtoOutput {
  const factory BusinessSettingsDtoOutput({
    required String businessId,
    required String name,
    required String? phone,
    required String? address,
    required String billPrefix,
    required String receiptPrefix,
    required String goodsReceiptPrefix,
    required BusinessSettingsDtoOutputBillFormat billFormat,
    required String? billFooter,
    required int wastageApprovalThreshold,
    required String? logoFileId,
    required String? logoUrl,
  }) = _BusinessSettingsDtoOutput;
  
  factory BusinessSettingsDtoOutput.fromJson(Map<String, Object?> json) => _$BusinessSettingsDtoOutputFromJson(json);
}
