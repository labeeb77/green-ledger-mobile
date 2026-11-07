// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'account3.dart';
import 'customer4.dart';
import 'unverified_split_dto_output_method.dart';

part 'unverified_split_dto_output.freezed.dart';
part 'unverified_split_dto_output.g.dart';

@Freezed()
abstract class UnverifiedSplitDtoOutput with _$UnverifiedSplitDtoOutput {
  const factory UnverifiedSplitDtoOutput({
    required String splitId,
    required String receiptId,
    required String receiptNumber,
    required String receiptDate,
    required Customer4 customer,
    required UnverifiedSplitDtoOutputMethod method,
    required Account3 account,
    required int amount,
    required String? reference,
  }) = _UnverifiedSplitDtoOutput;

  factory UnverifiedSplitDtoOutput.fromJson(Map<String, Object?> json) => _$UnverifiedSplitDtoOutputFromJson(json);
}
