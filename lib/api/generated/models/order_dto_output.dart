// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent2.dart';
import 'bills.dart';
import 'customer6.dart';
import 'lines14.dart';
import 'order_dto_output_status.dart';

part 'order_dto_output.freezed.dart';
part 'order_dto_output.g.dart';

@Freezed()
abstract class OrderDtoOutput with _$OrderDtoOutput {
  const factory OrderDtoOutput({
    required String id,
    required String number,
    required DateTime orderDate,
    required Customer6 customer,
    required Agent2? agent,
    required OrderDtoOutputStatus status,
    required int? estimatedTotal,
    required String? notes,
    required List<Lines14> lines,
    required List<Bills> bills,
    required String? approvalId,
    required DateTime createdAt,
    required String? cancelReason,
  }) = _OrderDtoOutput;
  
  factory OrderDtoOutput.fromJson(Map<String, Object?> json) => _$OrderDtoOutputFromJson(json);
}
