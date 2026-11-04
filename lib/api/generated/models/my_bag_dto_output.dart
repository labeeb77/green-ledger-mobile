// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'pending_handover.dart';
import 'today_cash_receipts.dart';

part 'my_bag_dto_output.freezed.dart';
part 'my_bag_dto_output.g.dart';

@Freezed()
abstract class MyBagDtoOutput with _$MyBagDtoOutput {
  const factory MyBagDtoOutput({
    required int balance,
    required List<TodayCashReceipts> todayCashReceipts,
    required PendingHandover? pendingHandover,
  }) = _MyBagDtoOutput;
  
  factory MyBagDtoOutput.fromJson(Map<String, Object?> json) => _$MyBagDtoOutputFromJson(json);
}
