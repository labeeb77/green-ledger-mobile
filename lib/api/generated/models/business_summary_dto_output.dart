// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'subscription2.dart';

part 'business_summary_dto_output.freezed.dart';
part 'business_summary_dto_output.g.dart';

@Freezed()
abstract class BusinessSummaryDtoOutput with _$BusinessSummaryDtoOutput {
  const factory BusinessSummaryDtoOutput({
    required String id,
    required String name,
    required String? phone,
    required DateTime createdAt,
    required Subscription2? subscription,
    required int userCount,
    required int activeUserCount,
    required String? lastActivityAt,
    required String? supportAccessUntil,
  }) = _BusinessSummaryDtoOutput;
  
  factory BusinessSummaryDtoOutput.fromJson(Map<String, Object?> json) => _$BusinessSummaryDtoOutputFromJson(json);
}
