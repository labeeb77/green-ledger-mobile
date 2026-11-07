// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_bills.freezed.dart';
part 'open_bills.g.dart';

@Freezed()
abstract class OpenBills with _$OpenBills {
  const factory OpenBills({
    required String id,
    required String number,
    required String date,
    required String dueDate,
    required int total,
    required int open,
  }) = _OpenBills;

  factory OpenBills.fromJson(Map<String, Object?> json) => _$OpenBillsFromJson(json);
}
