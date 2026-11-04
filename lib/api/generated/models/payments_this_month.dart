// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payments_this_month.freezed.dart';
part 'payments_this_month.g.dart';

@Freezed()
abstract class PaymentsThisMonth with _$PaymentsThisMonth {
  const factory PaymentsThisMonth({
    required int count,
    required int amount,
  }) = _PaymentsThisMonth;
  
  factory PaymentsThisMonth.fromJson(Map<String, Object?> json) => _$PaymentsThisMonthFromJson(json);
}
