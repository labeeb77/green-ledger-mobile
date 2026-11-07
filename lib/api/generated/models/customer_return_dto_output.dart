// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'bill2.dart';
import 'created_by6.dart';
import 'customer7.dart';
import 'customer_return_dto_output_status.dart';
import 'lines17.dart';

part 'customer_return_dto_output.freezed.dart';
part 'customer_return_dto_output.g.dart';

@Freezed()
abstract class CustomerReturnDtoOutput with _$CustomerReturnDtoOutput {
  const factory CustomerReturnDtoOutput({
    required String id,
    required String? number,
    required String returnDate,
    required Customer7 customer,
    required Bill2? bill,
    required int? total,
    required CustomerReturnDtoOutputStatus status,
    required String? notes,
    required CreatedBy6? createdBy,
    required String? approvalId,
    required List<Lines17> lines,
    required DateTime createdAt,
    required String? cancelReason,
  }) = _CustomerReturnDtoOutput;

  factory CustomerReturnDtoOutput.fromJson(Map<String, Object?> json) => _$CustomerReturnDtoOutputFromJson(json);
}
