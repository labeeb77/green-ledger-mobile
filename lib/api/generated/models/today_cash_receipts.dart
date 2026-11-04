// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_cash_receipts.freezed.dart';
part 'today_cash_receipts.g.dart';

@Freezed()
abstract class TodayCashReceipts with _$TodayCashReceipts {
  const factory TodayCashReceipts({
    required String receiptNumber,
    required String customer,
    required int amount,
  }) = _TodayCashReceipts;
  
  factory TodayCashReceipts.fromJson(Map<String, Object?> json) => _$TodayCashReceiptsFromJson(json);
}
