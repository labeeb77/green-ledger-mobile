// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'dispatch_result_dto_output_order_status.dart';

part 'dispatch_result_dto_output.freezed.dart';
part 'dispatch_result_dto_output.g.dart';

@Freezed()
abstract class DispatchResultDtoOutput with _$DispatchResultDtoOutput {
  const factory DispatchResultDtoOutput({
    required String dispatchId,
    required DispatchResultDtoOutputOrderStatus orderStatus,
    required String? billNumber,
    required int? billTotal,
  }) = _DispatchResultDtoOutput;

  factory DispatchResultDtoOutput.fromJson(Map<String, Object?> json) => _$DispatchResultDtoOutputFromJson(json);
}
