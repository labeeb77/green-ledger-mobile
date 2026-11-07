// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'bill.dart';
import 'lines5.dart';
import 'supplier5.dart';
import 'supplier_return_dto_output_status.dart';

part 'supplier_return_dto_output.freezed.dart';
part 'supplier_return_dto_output.g.dart';

@Freezed()
abstract class SupplierReturnDtoOutput with _$SupplierReturnDtoOutput {
  const factory SupplierReturnDtoOutput({
    required String id,
    required String number,
    required Supplier5 supplier,
    required String returnDate,
    required Bill? bill,
    required int total,
    required String? reason,
    required SupplierReturnDtoOutputStatus status,
    required List<Lines5> lines,
    required DateTime createdAt,
    required String? cancelReason,
  }) = _SupplierReturnDtoOutput;

  factory SupplierReturnDtoOutput.fromJson(Map<String, Object?> json) => _$SupplierReturnDtoOutputFromJson(json);
}
