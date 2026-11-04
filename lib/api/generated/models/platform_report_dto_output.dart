// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'businesses.dart';
import 'due_soon.dart';
import 'payments_this_month.dart';

part 'platform_report_dto_output.freezed.dart';
part 'platform_report_dto_output.g.dart';

@Freezed()
abstract class PlatformReportDtoOutput with _$PlatformReportDtoOutput {
  const factory PlatformReportDtoOutput({
    required Businesses businesses,
    required int trialsEnding7,
    required int renewalsDue7,
    required int renewalsDue30,
    required List<DueSoon> dueSoon,
    required PaymentsThisMonth paymentsThisMonth,
  }) = _PlatformReportDtoOutput;
  
  factory PlatformReportDtoOutput.fromJson(Map<String, Object?> json) => _$PlatformReportDtoOutputFromJson(json);
}
