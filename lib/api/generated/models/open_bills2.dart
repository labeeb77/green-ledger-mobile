// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_bills2.freezed.dart';
part 'open_bills2.g.dart';

@Freezed()
abstract class OpenBills2 with _$OpenBills2 {
  const factory OpenBills2({
    required String id,
    required String number,
    required String date,
    required String dueDate,
    required int total,
    required int open,
  }) = _OpenBills2;

  factory OpenBills2.fromJson(Map<String, Object?> json) => _$OpenBills2FromJson(json);
}
