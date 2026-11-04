// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer_rate_dto_output_mode.dart';

part 'customer_rate_dto_output.freezed.dart';
part 'customer_rate_dto_output.g.dart';

@Freezed()
abstract class CustomerRateDtoOutput with _$CustomerRateDtoOutput {
  const factory CustomerRateDtoOutput({
    required String productId,
    required String productName,
    required String stockUnit,
    required CustomerRateDtoOutputMode mode,
    required int value,
  }) = _CustomerRateDtoOutput;
  
  factory CustomerRateDtoOutput.fromJson(Map<String, Object?> json) => _$CustomerRateDtoOutputFromJson(json);
}
